// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commute_planner_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiCommutePlanner _$ApiCommutePlannerFromJson(Map<String, dynamic> json) =>
    _ApiCommutePlanner(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      weekDay: (json['weekDay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiCommutePlannerToJson(_ApiCommutePlanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'weekDay': instance.weekDay,
    };
