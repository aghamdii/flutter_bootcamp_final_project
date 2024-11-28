import 'package:bootcamp_project_completed/domain/model/task.dart';

abstract class TasksTabState {}

class TasksTabLoading extends TasksTabState {}

class TasksTabSuccess extends TasksTabState {
  TasksTabSuccess(
    this.tasks,
    this.selectedTasks,
  );

  final List<Task> tasks;

  final List<Task> selectedTasks;
}

class TasksTabFailure extends TasksTabState {
  TasksTabFailure(
    this.errorMessage,
  );

  final String errorMessage;
}
