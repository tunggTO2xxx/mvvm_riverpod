import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[HttpHeaders.authorizationHeader] = "Bearer TOKEN";
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("Response: ${response.statusCode} ${response.data}");
    super.onResponse(response, handler);
  }
}