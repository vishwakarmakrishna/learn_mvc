import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:learn_mvc/core/constants/api_endpoints.dart';

enum ApiMethods { get, post, put, delete, patch, head, options }

class ApiService {
  Dio? apiclient;

  ApiService() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiEndPoints.baseUrl,
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 5),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
    apiclient = Dio(options);
  }

  Future<Response> request(
    String endpoint,
    ApiMethods method, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await apiclient!.request(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options ?? Options(method: method.name.toUpperCase()),
      );
      return response;
    } catch (e) {
      log("Error in API request: $e");
      rethrow;
    }
  }
}
