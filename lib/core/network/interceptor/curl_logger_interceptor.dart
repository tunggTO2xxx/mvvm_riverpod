import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

class CurlLoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logCurlRequest(options);
    super.onRequest(options, handler);
  }

  void _logCurlRequest(RequestOptions options) {
    final method = options.method;
    final url = options.uri.toString();

    // Format headers
    final headers = options.headers.entries
        .map((entry) => '-H "${entry.key}: ${entry.value}"')
        .join(' ');

    // Format body (if exists)
    String? body;
    if (options.data != null) {
      if (options.data is Map || options.data is List) {
        body = '-d \'${jsonEncode(options.data)}\'';
      } else if (options.data is String) {
        body = '-d \'${options.data}\'';
      }
    }

    // Construct the cURL command
    final curlCommand = 'curl -X $method $headers ${body ?? ""} "$url"';

    log('cURL Request:\n$curlCommand\n');
  }
}