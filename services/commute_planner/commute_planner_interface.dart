
import 'package:architecture/models/commute_planner.dart';

abstract class CommutePlannerServiceInterface{
  Future<void> update(CommutePlanner commutePlanner);
  Future<void> fetch(String id);
}