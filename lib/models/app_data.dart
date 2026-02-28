import 'task.dart';
import 'task_list.dart';
import 'folder.dart';
import 'tag.dart';
import 'smart_list.dart';

/// Root container for all app data.
class AppData {
  List<Task> tasks;
  List<TaskList> lists;
  List<Folder> folders;
  List<Tag> tags;
  List<SmartList> smartLists;
  DateTime lastModified;

  AppData({
    List<Task>? tasks,
    List<TaskList>? lists,
    List<Folder>? folders,
    List<Tag>? tags,
    List<SmartList>? smartLists,
    DateTime? lastModified,
  }) : tasks = tasks ?? [],
       lists = lists ?? [],
       folders = folders ?? [],
       tags = tags ?? [],
       smartLists = smartLists ?? [],
       lastModified = lastModified ?? DateTime.now();
}
