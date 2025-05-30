import 'package:dio/dio.dart';
import 'package:flutter_application_1/features/auth/data/models/auth_modal.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/network/api_client.dart';

class AuthRemoteDataSource {

  Future<AuthModal> signIn(String email, String password) async {
    try {
      final res = await dioInstance.post(
        '/marketplace/customer/v1/sign-in',
        data: {'type': 'CUSTOMER', 'username': email, 'password': password},
      );
      print(res.data['data'][0]['bearerToken']); 

      final token = res.data['data'][0]['bearerToken'];
   
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('bearerToken', token);
      dioInstance.options.headers['Authorization'] = 'Bearer $token';
      return AuthModal.fromJson(res.data['data'][0]);
    } on DioException catch (e) {
      print(e.response?.data);
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }
  Future<UserModel> getProfile() async {
    try {
      final res = await dioInstance.get('/marketplace/customer/v1/me');
      print(res.data);
      
      return UserModel.fromJson(res.data['data'][0]);
    } on DioException catch (e) {
      print(e.response?.data);
      throw Exception(e.response?.data['message'] ?? 'Failed to get profile');
    }
  }
}
