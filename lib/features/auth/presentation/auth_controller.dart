import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';

import '../data/auth_remote_data_source.dart';

class AuthController {
  final _authService = AuthRemoteDataSource();

  Future<AuthModal> login(String email, String password) {
    return _authService.signIn(email, password);
  }
}
