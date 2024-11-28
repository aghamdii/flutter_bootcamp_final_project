import 'package:bootcamp_project_completed/domain/model/task.dart';

abstract class TasksTabEvent {}

class TasksTabStarted extends TasksTabEvent {}

class TasksTabTaskAdded extends TasksTabEvent {
  TasksTabTaskAdded(
    this.task,
  );

  final Task task;
}

class TasksTabTaskRemoved extends TasksTabEvent {
  TasksTabTaskRemoved(
    this.task,
  );

  final Task task;
}
