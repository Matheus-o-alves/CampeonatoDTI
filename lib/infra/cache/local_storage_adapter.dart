import 'package:campeonato_brasileiro/data/cache/fetch_secure_cache_storage.dart';
import 'package:campeonato_brasileiro/data/cache/save_secure_cache_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorageAdapter
    implements SaveSecureCacheStorage, FetchSecureCacheStorage {
  final FlutterSecureStorage? secureStorage;
  LocalStorageAdapter({this.secureStorage});
  Future<void> saveSecure({required String key, required String? value}) async {
    await secureStorage!.write(key: key, value: value);
  }

  Future<String?> fetchSecure(String key) async {
    return secureStorage!.read(key: key);
  }
}
