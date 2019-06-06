import 'dart:io';

import 'package:cdmsapp/data/net/interceptors/error_interceptor.dart';
import 'package:cdmsapp/data/net/interceptors/log_interceptor.dart';
import 'package:cdmsapp/data/net/interceptors/response_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:cdmsapp/common/common.dart';

class DioUtil {
  static DioUtil _singleton = DioUtil._init();
  static Dio _dio;

  /// get dio.
  Dio getDio() => _dio;

  /// Options.
  BaseOptions _options = getDefOptions();

  static DioUtil _getInstance() {
    if (_singleton == null) {
      _singleton = DioUtil._init();
    }
    return _singleton;
  }

  factory DioUtil() => _getInstance();

  DioUtil._init() {
    _dio = new Dio(_options);
    // _dio.interceptors.add(new ErrorInterceptors(_dio));
    _dio.interceptors.add(new ResponseInterceptors());
    _dio.interceptors.add(new LogsInterceptors());
  }

  static BaseOptions getDefOptions() {
    BaseOptions options = new BaseOptions();
    options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    options.connectTimeout = 1000 * 10;
    options.receiveTimeout = 1000 * 20;
    options.baseUrl = Constant.SERVER_ADDRESS;
    return options;
  }
}
