// ══════════════════════════════════════════════════════════════════
//  MIGRATION — remove this file after migrating personal data.
// ══════════════════════════════════════════════════════════════════

import 'dart:convert';
import '../models/app_data.dart';
import '../models/task.dart';
import '../models/task_list.dart';
import '../models/folder.dart';
import '../models/tag.dart';
import '../models/smart_list.dart';
import '../models/recurrence.dart';

/// Parses a full-app JSON export (legacy format) into an [AppData] object.
///
/// Expected top-level shape:
/// ```json
/// {
///   "tasks":      [...],
///   "lists":      [...],
///   "folders":    [...],
///   "tags":       [...],
///   "smartLists": [...]
/// }
/// ```
class JsonMigration {
  JsonMigration._();

  /// Entry point: decode a raw JSON string and return the equivalent [AppData].
  static AppData fromJsonString(String json) {
    final map = jsonDecode(json) as Map<String, dynamic>;
    return AppData(
      tasks: _list(map['tasks'], _taskFromJson),
      lists: _list(map['lists'], _listFromJson),
      folders: _list(map['folders'], _folderFromJson),
      tags: _list(map['tags'], _tagFromJson),
      smartLists: _list(map['smartLists'], _smartListFromJson),
    );
  }

  // ───── Internal helpers ─────

  static List<T> _list<T>(
    dynamic raw,
    T Function(Map<String, dynamic>) parse,
  ) =>
      (raw as List? ?? [])
          .map((e) => parse(e as Map<String, dynamic>))
          .toList();

  // ───── Task ─────

  static Task _taskFromJson(Map<String, dynamic> j) => Task(
        id: j['id'] as String,
        title: j['title'] as String,
        notes: (j['notes'] as String?) ?? '',
        isCompleted: (j['isCompleted'] as bool?) ?? false,
        createdAt: DateTime.parse(j['createdAt'] as String),
        scheduledDate: j['scheduledDate'] != null
            ? DateTime.parse(j['scheduledDate'] as String)
            : null,
        recurrence: j['recurrence'] != null
            ? _recurrenceFromJson(j['recurrence'] as Map<String, dynamic>)
            : null,
        tagIds: ((j['tagIds'] as List?) ?? []).cast<String>().toSet(),
        listId: j['listId'] as String,
        previousTaskId: j['previousTaskId'] as String?,
        nextTaskId: j['nextTaskId'] as String?,
        completedDates: ((j['completedDates'] as List?) ?? [])
            .map((d) => DateTime.parse(d as String))
            .toSet(),
      );

  // ───── RecurrenceRule ─────

  static RecurrenceRule _recurrenceFromJson(Map<String, dynamic> j) =>
      switch (j['type'] as String) {
        'daily' => const DailyRecurrence(),
        'everyNDays' => EveryNDaysRecurrence(j['interval'] as int),
        'weekly' =>
          WeeklyRecurrence(((j['weekdays'] as List)).cast<int>().toSet()),
        'monthly' => MonthlyRecurrence(j['dayOfMonth'] as int),
        'yearly' =>
          YearlyRecurrence(j['month'] as int, j['dayOfMonth'] as int),
        final t => throw FormatException('Unknown recurrence type: $t'),
      };

  // ───── TaskList ─────

  static TaskList _listFromJson(Map<String, dynamic> j) => TaskList(
        id: j['id'] as String,
        name: j['name'] as String,
        colorValue: j['colorValue'] as int?,
        folderId: j['folderId'] as String?,
        order: (j['order'] as int?) ?? 0,
      );

  // ───── Folder ─────

  static Folder _folderFromJson(Map<String, dynamic> j) => Folder(
        id: j['id'] as String,
        name: j['name'] as String,
        order: (j['order'] as int?) ?? 0,
      );

  // ───── Tag ─────

  static Tag _tagFromJson(Map<String, dynamic> j) => Tag(
        id: j['id'] as String,
        name: j['name'] as String,
        colorValue: (j['colorValue'] as int?) ?? 0xFF42A5F5,
      );

  // ───── SmartList ─────

  static SmartList _smartListFromJson(Map<String, dynamic> j) => SmartList(
        id: j['id'] as String,
        name: j['name'] as String,
        iconCodePoint: (j['iconCodePoint'] as int?) ?? 0xe0c8,
        colorValue: (j['colorValue'] as int?) ?? 0xFFAB47BC,
        filter: _filterFromJson(
          (j['filter'] as Map<String, dynamic>?) ?? {'type': 'allTasks'},
        ),
      );

  // ───── SmartListFilter ─────

  static SmartListFilter _filterFromJson(Map<String, dynamic> j) =>
      switch (j['type'] as String) {
        'today' => const TodayFilter(),
        'tomorrow' => const TomorrowFilter(),
        'upcoming' => const UpcomingFilter(),
        'overdue' => const OverdueFilter(),
        'completed' => const CompletedFilter(),
        'allTasks' => const AllTasksFilter(),
        'dateRange' => DateRangeFilter(
            dateFrom: j['dateFrom'] != null
                ? DateTime.parse(j['dateFrom'] as String)
                : null,
            dateTo: j['dateTo'] != null
                ? DateTime.parse(j['dateTo'] as String)
                : null,
          ),
        'tags' =>
          TagsFilter(tagIds: ((j['tagIds'] as List?) ?? []).cast<String>().toSet()),
        final t => throw FormatException('Unknown filter type: $t'),
      };
}
