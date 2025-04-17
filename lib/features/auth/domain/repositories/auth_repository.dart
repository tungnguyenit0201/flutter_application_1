import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';


abstract class AuthRepository {
  Future<AuthModal> signIn(String email, String password);
  Future<UserModel> getProfile();
}
