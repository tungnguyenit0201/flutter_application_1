import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:flutter_application_1/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<UserModel> getProfile() async {
    return _remoteDataSource.getProfile();
  }
} 