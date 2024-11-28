// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) => TaskDto(
      (json['id'] as num?)?.toInt(),
      json['todo'] as String?,
      json['completed'] as bool?,
      (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TaskDtoToJson(TaskDto instance) => <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
