import 'package:json_annotation/json_annotation.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto {
  TaskDto(
    this.id,
    this.todo,
    this.completed,
    this.userId,
  );

  factory TaskDto.fromJson(Map<String, dynamic> json) => _$TaskDtoFromJson(
        json,
      );

  final int? id;
  final String? todo;
  final bool? completed;
  final int? userId;
}
