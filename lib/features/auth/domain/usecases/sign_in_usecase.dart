import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository repository;

  SignInUseCase(this.repository);

  Future<AuthModal> call(String email, String password) {
    return repository.signIn(email, password);
  }
} 