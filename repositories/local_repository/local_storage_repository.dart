import 'package:architecture/repositories/local_repository/local_storage_repository_interface.dart';

class LocalStorageRepository implements LocalStorageRepositoryInterface {
  final map = <String, Object>{};

  @override
  Future<T?> load<T>(String key) async {
    final result = map[key];
    return result is T ? result : null;
  }

  @override
  Future<void> save(String key, Object object) async {
    map[key] = object;
  }
}
