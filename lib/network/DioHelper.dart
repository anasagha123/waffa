// ignore_for_file: avoid_print, file_names

import 'dart:convert';

import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData({
    required String path,
    required Map<String, dynamic> query,
  }) async {
    return await dio!
        .get(
      path,
      queryParameters: query,
    )
        .catchError((error) {
      print('error when getting data with dio');
    });
  }

  static Future<Response> postData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    return await dio!
        .post(
      path,
      data: jsonEncode(data),
    )
        .catchError((error) {
      print('error when getting data with dio');
    });
  }

  static Future<Response> delData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    return await dio!
        .delete(
      path,
      data: jsonEncode(data),
    )
        .catchError((error) {
      print('error when getting data with dio');
    });
  }

  static Future<Response> putData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    return await dio!
        .put(
      path,
      data: jsonEncode(data),
    )
        .catchError((error) {
      print('error when getting data with dio');
    });
  }
}
