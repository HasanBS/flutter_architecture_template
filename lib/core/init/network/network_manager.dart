//import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter_architecture_template/core/constants/app/app_constants.dart';

import 'core_dio.dart';
import 'icore_dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager instance(String langKey) {
    return _instance ??= NetworkManager._init(langKey);
  }

  late ICoreDio coreDio;

  NetworkManager._init(String header) {
    final baseOptions = BaseOptions(
        baseUrl: AppConstants.API_URL,
        headers: {AppConstants.LANG_HEADER: header});
    coreDio = CoreDio(baseOptions);
  }
}
