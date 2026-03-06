import 'dart:ui';

class TaskList {
  String id;
  String name;
  int? colorValue;
  String? folderId;
  int order;

  TaskList({
    required this.id,
    required this.name,
    this.colorValue,
    this.folderId,
    this.order = 0,
  });

  Color? get color => colorValue != null ? Color(colorValue!) : null;
}
