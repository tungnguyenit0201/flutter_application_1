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

  Future<void> initializeHeaders(String token) async {
    dio.options.headers['Authorization'] = 'Bearer $token';
  }
}
final Dio dioInstance = ApiClient().dio;