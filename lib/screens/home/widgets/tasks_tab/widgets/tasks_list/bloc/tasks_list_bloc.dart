import 'package:bootcamp_project_completed/data/repository/tasks_repository.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/tasks_list/bloc/tasks_list_event.dart';
import 'package:bootcamp_project_completed/screens/home/widgets/tasks_tab/widgets/tasks_list/bloc/tasks_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListBloc extends Bloc<TasksListEvent, TasksListState> {
  TasksListBloc()
      : super(
          TasksListLoading(),
        ) {
    on<TasksListStarted>(
      (event, emit) async {
        // Call the data from the database
        final tasks = await _tasksRepository.getMyTasks();
        emit(
          TasksListSuccess(tasks),
        );
      },
    );
  }

  final TasksRepository _tasksRepository = TasksRepository();

  @override
  void onEvent(TasksListEvent event) {
    print('event triggered ${event.runtimeType}');
    super.onEvent(event);
  }
}
