import 'package:campeonato_brasileiro/data/cache/fetch_secure_cache_storage.dart';
import 'package:campeonato_brasileiro/data/http/http.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  final FetchSecureCacheStorage fetchSecureCacheStorage;

  final HttpClient decoratee;

  AuthorizeHttpClientDecorator({
    required this.fetchSecureCacheStorage,
    required this.decoratee,
  });

  Future<dynamic> request({
    required String url,
    required String method,
    Map? body,
    Map? headers,
  }) async {
    try {
      final token = await fetchSecureCacheStorage.fetchSecure('token');
      final authorizedHeaders = headers ?? {}
        ..addAll({'Authorization': 'Bearer live_acb2b893f7e58327ce7a5e6de826ee'});
      final response = await decoratee.request(
          url: url, method: method, body: body, headers: authorizedHeaders);

      return response;
    } catch (error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        // await deleteSecureCacheStorage.deleteSecure(key: 'token');
        throw HttpError.forbidden;
      }
    }
  }
}
