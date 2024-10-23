part of 'commute_planner_repository.dart';

@JsonSerializable()
class _ApiCommutePlanner {
  _ApiCommutePlanner({
    required this.id,
    this.name,
    this.weekDay,
  });

  final int id;
  final String? name;
  final int? weekDay;

  CommutePlanner toModel() {
    return CommutePlanner(
      id: id.toString(),
      weekDay: weekDay ?? 0,
    );
  }

  factory _ApiCommutePlanner.fromJson(Map<String, dynamic> json) => _$ApiCommutePlannerFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ApiCommutePlannerToJson(this);
}
