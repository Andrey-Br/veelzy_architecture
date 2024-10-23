class CommutePlanner {
  CommutePlanner({
    required this.id,
    required this.weekDay,
    this.name,
  });

  final String id;
  final String? name;
  final int weekDay;
}
