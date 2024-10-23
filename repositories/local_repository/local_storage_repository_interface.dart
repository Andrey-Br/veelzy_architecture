abstract class LocalStorageRepositoryInterface {
  Future<void> save(String key, Object object);
  Future<T?> load<T>(String key);
}
