import 'package:flutter_application_1/features/auth/data/auth_remote_data_source.dart';
import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/domain/repositories/auth_repository.dart';


class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<AuthModal> signIn(String email, String password) {
    return remoteDataSource.signIn(email, password);
  }
}
