import 'package:bootcamp_project_completed/data/dto/task_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tasks_response_dto.g.dart';

@JsonSerializable()
class TasksResponseDto {
  TasksResponseDto(
    this.todos,
    this.total,
    this.skip,
    this.limit,
  );

  factory TasksResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseDtoFromJson(
        json,
      );

  final List<TaskDto>? todos;
  final int? total;
  final int? skip;
  final int? limit;
}
