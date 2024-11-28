import 'package:bootcamp_project_completed/data/data_source/tasks_remote_data_source.dart';
import 'package:bootcamp_project_completed/data/dto/tasks_response_dto.dart';
import 'package:bootcamp_project_completed/data/mapper/tasks_dto_mapper.dart';
import 'package:bootcamp_project_completed/domain/model/task.dart';

class TasksRepository {
  // Mapper
  final TasksDtoMapper _tasksDtoMapper = TasksDtoMapper();
  // Data Source
  final TasksRemoteDataSource _tasksRemoteDataSource = TasksRemoteDataSource();

  // Function to fetch Tasks
  Future<List<Task>> getMyTasks() async {
    final response = await _tasksRemoteDataSource.getTasks();
    final responseDto = TasksResponseDto.fromJson(response);

    final tasksList = <Task>[];

    responseDto.todos?.forEach(
      (taskDto) {
        final task = _tasksDtoMapper.map(taskDto);
        tasksList.add(task);
      },
    );
    return tasksList;
  }
}
