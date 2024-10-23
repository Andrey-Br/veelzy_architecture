import 'package:json_annotation/json_annotation.dart';
import 'package:architecture/models/commute_planner.dart';
import 'package:architecture/repositories/commute_planner/commute_planner_repository_interface.dart';

part 'commute_planner_repository.g.dart';
part 'commute_planner_api.dart';

class CommutePlannerRepository implements CommutePlannerRepositoryInterface {
  @override
  Future<CommutePlanner> fetchCommutePlannerFromId({required String id}) async {
    final response = {'id': '12', 'name': 'blabla'};

    return _ApiCommutePlanner.fromJson(response).toModel();
  }

  @override
  Future<void> updateData(CommutePlanner commutePlanner) async {
    final apiModel = _ApiCommutePlanner.fromModel(commutePlanner);
    final postJson = apiModel.toJson();
     
  }
}
