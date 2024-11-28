import 'package:bootcamp_project_completed/domain/model/task.dart';

abstract class TasksListState {}

class TasksListLoading extends TasksListState {}

class TasksListSuccess extends TasksListState {
  TasksListSuccess(
    this.tasks,
  );

  final List<Task> tasks;
}

class TasksListFailure extends TasksListState {
  TasksListFailure(
    this.errorMessage,
  );

  final String errorMessage;
}
