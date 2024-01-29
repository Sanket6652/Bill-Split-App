import 'dart:convert';

import 'package:splitupapp/constant/global_constant.dart';
import 'package:splitupapp/services/logger.dart';
import 'package:http/http.dart' as http;

const String baseUrl = GlobalConstants.baseUrl;

class NetworkService {
  static const Duration timeoutDuration = Duration(seconds: 30);
  NetworkService._();
  static NetworkService? _instance;

  factory NetworkService() {
    _instance ??= NetworkService._();
    return _instance!;
  }

  Future<Map<String, dynamic>> post(
      String endpoint, Map<String, dynamic> body) async {
    final Uri url = Uri.parse(baseUrl + endpoint);
    print(url);
    try {
      LoggingService.debugLog('POST: $url');
      final http.Response response = await http
          .post(
            url,
            body: json.encode(body),
          )
          .timeout(timeoutDuration);

      final int statusCode = response.statusCode;
      final String responseBody = response.body;

      return handleResponse(url, statusCode, responseBody);
    } catch (e) {
      LoggingService.errorLog('ERROR ($url): $e');
      return {'statusCode': null, 'error': e.toString()};
    }
  }

  static Map<String, dynamic> handleResponse(url, statusCode, responseBody) {
    final Map<String, dynamic> body = jsonDecode(responseBody);
    if (statusCode == 200 || statusCode == 201) {
      return {
        'hasError': false,
        'statusCode': statusCode,
        'body': body,
      };
    } else {
      LoggingService.errorLog('ERROR ($url): $statusCode - $body');
      return {
        'hasError': true,
        'statusCode': statusCode,
        'error': body,
      };
    }
  }
}
