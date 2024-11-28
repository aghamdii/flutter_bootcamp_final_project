// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasksResponseDto _$TasksResponseDtoFromJson(Map<String, dynamic> json) =>
    TasksResponseDto(
      (json['todos'] as List<dynamic>?)
          ?.map((e) => TaskDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['total'] as num?)?.toInt(),
      (json['skip'] as num?)?.toInt(),
      (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TasksResponseDtoToJson(TasksResponseDto instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
