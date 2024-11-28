import 'package:bootcamp_project_completed/data/dto/task_dto.dart';
import 'package:bootcamp_project_completed/domain/model/task.dart';

// Convert to domain model, and remove 'null' values.
class TasksDtoMapper {
  Task map(TaskDto dto) {
    return Task(
      dto.id ?? 0,
      dto.todo ?? '',
      dto.completed ?? false,
      dto.userId ?? 0,
    );
  }
}
