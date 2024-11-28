import 'package:bootcamp_project_completed/data/repository/tasks_repository.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_event.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/bloc/tasks_tab_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksTabBloc extends Bloc<TasksTabEvent, TasksTabState> {
  TasksTabBloc() : super(TasksTabLoading()) {
    on<TasksTabStarted>(
      (event, emit) async {
        final tasks = await _tasksRepository.getMyTasks();
        emit(
          TasksTabSuccess(
            tasks,
            [],
          ),
        );
      },
    );

    on<TasksTabTaskAdded>(
      (event, emit) {
        if (state is TasksTabSuccess) {
          final currentState = state as TasksTabSuccess;

          emit(
            TasksTabSuccess(
              currentState.tasks,
              currentState.selectedTasks..add(event.task),
            ),
          );
        }
      },
    );

    on<TasksTabTaskRemoved>(
      (event, emit) {
        if (state is TasksTabSuccess) {
          final currentState = state as TasksTabSuccess;

          emit(
            TasksTabSuccess(
              currentState.tasks,
              currentState.selectedTasks..remove(event.task),
            ),
          );
        }
      },
    );
  }

  final TasksRepository _tasksRepository = TasksRepository();
}
