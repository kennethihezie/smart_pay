import '../model/token.dart';
import '../model/user.dart';
import '../network/network_service.dart';

class AuthRepository {
  final AuthNetworkService _networkService;
  AuthRepository(this._networkService);

  Future<Token?> getEmailToken(String email) async {
    return _networkService.getEmailToken(email);
  }

  Future<Token?> verifyEmailToken(String token) async {
    return _networkService.verifyEmailToken(token);
  }

  Future<User?> registerUser(User user) async {
    return _networkService.registerUser(user);
  }

  Future<User?> loginUser(User user) async {
    return _networkService.loginUser(user);
  }

  Future<bool?> logoutUser(String token) async {
    return _networkService.logoutUser(token);
  }
}
