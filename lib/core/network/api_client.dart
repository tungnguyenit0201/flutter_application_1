import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient()
    : dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.stg.th.buymed.tech',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
            'Accept-Language': 'en',
            'Accept': 'application/json',
            'User-Agent':
                'thuocsi-mobile/2.3.10-TH-STG-SPRINT-46 iPhone/iPhone15%2C3 Apple/3BB84B85-8A4E-491D-A417-E46CB3B1F3E9 ios/18.3.2 231001/v181',
            'User-Identification':
                '{"appVersion":"2.3.10-TH-STG-SPRINT-46","buildVersion":"231001","imei":"10687E07-25ED-4300-85B8-ACFEAB4B690B","platform":"ios","uniqueId":"3BB84B85-8A4E-491D-A417-E46CB3B1F3E9","deviceId":"iPhone15%2C3","deviceName":"iPhone","manufacturer":"Apple","isEmulator":false,"language":"th","timezone":7}',
          },
        ),
      );
}
// The ApiClient class is responsible for making network requests to the API.
// It uses the Dio package to handle HTTP requests and responses.
// The constructor initializes the Dio instance with a base URL and default options.
// You can customize the base URL and other options as needed.
// The ApiClient class can be used in your services or repositories to make API calls.
// You can add methods to the ApiClient class for specific API endpoints, such as:
// - getUser
// - createUser
// - updateUser
// - deleteUser
// Each method can use the Dio instance to make GET, POST, PUT, or DELETE requests.
// You can also handle errors and responses in these methods.
// For example, you can create a method to fetch user data:
//
// Future<User> getUser(int userId) async {
//   try {
//     final response = await dio.get('/users/$userId');
    // Handle the response and return the user data
//     return User.fromJson(response.data);
//   } on DioError catch (e) {
//     // Handle errors, such as network issues or API errors
//     throw Exception('Failed to load user: ${e.message}');
//   }
//   }
// This method fetches user data from the API and handles errors.
// You can create similar methods for other API endpoints.
// The ApiClient class can be injected into your services or repositories using dependency injection.
// This allows you to easily swap out the implementation if needed, such as for testing or using a different API.
// You can also create a separate file for the ApiClient class, such as api_client.dart, and import it where needed.
// This keeps your code organized and maintainable.
