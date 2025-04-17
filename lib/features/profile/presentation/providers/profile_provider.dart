import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:flutter_application_1/features/profile/data/repositories/profile_repository_impl.dart';

class ProfileProvider extends ChangeNotifier {
  final ProfileRepositoryImpl _repository;
  UserModel? _user;
  String? _error;
  bool _isLoading = false;

  ProfileProvider()
      : _repository = ProfileRepositoryImpl(ProfileRemoteDataSource());

  UserModel? get user => _user;
  String? get error => _error;
  bool get isLoading => _isLoading;

  Future<void> loadProfile() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _user = await _repository.getProfile();
      _error = null;
    } catch (e) {
      _error = e.toString();
      _user = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
} 