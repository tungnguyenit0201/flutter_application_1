import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/domain/usecases/get_profile_usecase.dart';
import 'package:flutter_application_1/features/auth/domain/usecases/sign_in_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthStatus { initial, loading, authenticated, error }

class AuthProvider extends ChangeNotifier {
  final SignInUseCase _signInUseCase;
  final GetProfileUseCase _getProfileUseCase;

  AuthStatus _status = AuthStatus.initial;
  AuthModal? _auth;
  UserModel? _user;
  String? _errorMessage;

  AuthProvider({
    required SignInUseCase signInUseCase,
    required GetProfileUseCase getProfileUseCase,
  })  : _signInUseCase = signInUseCase,
        _getProfileUseCase = getProfileUseCase;

  AuthStatus get status => _status;
  AuthModal? get auth => _auth;
  UserModel? get user => _user;
  String? get errorMessage => _errorMessage;

  Future<void> signIn(String email, String password) async {
    _status = AuthStatus.loading;
    _errorMessage = null;
    notifyListeners();

    try {
      _auth = await _signInUseCase(email, password);
      _status = AuthStatus.authenticated;
    } catch (e) {
      _status = AuthStatus.error;
      _errorMessage = e.toString();
    }
    
    notifyListeners();
  }

  Future<void> getProfile() async {
    _status = AuthStatus.loading;
    _errorMessage = null;
    notifyListeners();

    try {
      _user = await _getProfileUseCase();
      _status = AuthStatus.authenticated;
    } catch (e) {
      _status = AuthStatus.error;
      _errorMessage = e.toString();
    }
    
    notifyListeners();
  }

  Future<void> signOut() async {
    _status = AuthStatus.loading;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('bearerToken');
      
      _auth = null;
      _user = null;
      _status = AuthStatus.initial;
    } catch (e) {
      _status = AuthStatus.error;
      _errorMessage = e.toString();
    }
    
    notifyListeners();
  }
} 