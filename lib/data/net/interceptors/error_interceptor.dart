import 'package:cdmsapp/data/net/code.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class ErrorInterceptors extends InterceptorsWrapper {
  final Dio _dio;

  ErrorInterceptors(this._dio);

  @override
  onRequest(RequestOptions options) async {
    //没有网络
    var connectivityResult = await (new Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Code.errorHandleFunction(Code.NETWORK_ERROR);
      return _dio.reject(Code.NETWORK_ERROR);
    }
    return options;
  }
}
