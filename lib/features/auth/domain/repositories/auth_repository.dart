import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';


abstract class AuthRepository {
  Future<AuthModal> signIn(String email, String password);
}
