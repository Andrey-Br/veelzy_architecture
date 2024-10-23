import 'package:architecture/models/commute_planner.dart';
import 'package:architecture/repositories/commute_planner/commute_planner_repository_interface.dart';
import 'package:architecture/repositories/local_repository/local_storage_repository_interface.dart';
import 'package:architecture/services/commute_planner/commute_planner_interface.dart';

class CommutePlannerService implements CommutePlannerServiceInterface {
  CommutePlannerService({
    required this.commutePlannerRepository,
    required this.localStorageRepository,
  });

  final CommutePlannerRepositoryInterface commutePlannerRepository;
  final LocalStorageRepositoryInterface localStorageRepository;

  @override
  Future<void> fetch(String id) async {
    final commutePlanner = await commutePlannerRepository.fetchCommutePlannerFromId(id: id);
    localStorageRepository.save('CommutePlanner_$id', commutePlanner);
  }

  @override
  Future<void> update(CommutePlanner commutePlanner) async {
    localStorageRepository.save('CommutePlanner_${commutePlanner.id}', commutePlanner);
    // commutePlannerRepository.

  }
}
