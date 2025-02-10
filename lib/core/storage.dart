import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const String _token = 'token';
const String _profile = 'profile';
const String _tokenId = 'token_id';
const String _baseUrl = 'baseUrl';

class StorageService extends GetxService {
  final _box = GetStorage();
  final _loggedIn = RxBool(false);

  @override
  Future<void> onInit() async {
    _loggedIn.value = token != null;
    if (!_loggedIn.value) {
      await _box.erase();
    }
    super.onInit();
  }

  Future<void> setBaseUrl(String url) async {
    await _box.write(_baseUrl, url);
  }

  Future<void> setToken(String token) async {
    await _box.write(_token, token);
    _loggedIn.value = true;
  }

  Future<void> setRefreshToken(String token) async {
    await _box.write(_token, token);
  }

  Future<void> setTokenId(String tokenId) async {
    await _box.write(_tokenId, tokenId);
    _loggedIn.value = true;
  }

  String? get token => _box.read(_token);

  String? get tokenId => _box.read(_tokenId);

  bool get isLoggedIn => _loggedIn.value;

  void removeToken() {
    _box.remove(_token);
  }

  Future<void> getLoggedIn() async {
    _loggedIn.value = token != null;
  }

  Future<void> setLogout() async {
    await _box.remove(_token);
    await _box.remove(_profile);
    _loggedIn.value = false;
  }
}
