import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/network/api_client.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';

class ProfileRemoteDataSource {
  

  Future<UserModel> getProfile() async {
    try {
      final response = await dioInstance.get('/marketplace/customer/v1/me');
      return UserModel.fromJson(response.data['data'][0]);
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Failed to get profile');
    }
  }
} 