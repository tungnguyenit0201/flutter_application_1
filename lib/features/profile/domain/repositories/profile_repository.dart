import 'package:flutter_application_1/features/auth/data/models/user_model.dart';

abstract class ProfileRepository {
  Future<UserModel> getProfile();
} 