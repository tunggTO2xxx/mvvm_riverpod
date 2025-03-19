import 'package:dio/dio.dart';
import 'package:mvvm_riverpod_base/core/network/interceptor/curl_logger_interceptor.dart';
import 'package:mvvm_riverpod_base/core/network/interceptor/network_interceptor.dart';
import 'package:mvvm_riverpod_base/utils/common/constants.dart';
// ignore: depend_on_referenced_packages
import 'package:pretty_dio_logger/pretty_dio_logger.dart';


class ApiClient {
  static Future<Dio> setUpDio(String baseUrl, {
    int? connectTimeout,
    int? receiveTimeout,
    int? sendTimeout,
  }) async {
    final options = BaseOptions(
      baseUrl: baseUrl,
      sendTimeout:
          Duration(seconds: sendTimeout ?? Constants.defaultSendTimeout),
      connectTimeout:
          Duration(seconds: connectTimeout ?? Constants.defaultConnectTimeout),
      receiveTimeout:
          Duration(seconds: receiveTimeout ?? Constants.defaultReceiveTimeout),
      responseType: ResponseType.json,
    );

    final Dio dio = Dio(options);

    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseHeader: true,
      responseBody: true,
    ));

    dio.interceptors.add(CurlLoggerInterceptor());

    dio.interceptors.add(NetworkInterceptor());

    return dio;
  }
}
