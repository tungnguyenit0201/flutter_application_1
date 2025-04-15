import '../../auth/data/auth_service.dart';

class AuthController {
  final _authService = AuthService();

  Future<bool> login(String email, String password) {
    return _authService.signIn(email, password);
  }
}
