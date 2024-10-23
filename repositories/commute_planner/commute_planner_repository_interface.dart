
import 'package:architecture/models/commute_planner.dart';

abstract class CommutePlannerRepositoryInterface {
  Future<CommutePlanner> fetchCommutePlannerFromId({required String id});
  Future<void> updateData(CommutePlanner commutePlanner);
}
