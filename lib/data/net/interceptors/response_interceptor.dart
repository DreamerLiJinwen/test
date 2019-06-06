import 'package:cdmsapp/data/net/code.dart';
import 'package:dio/dio.dart';

class ResponseInterceptors extends InterceptorsWrapper {
  @override
  onResponse(Response response) {
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response;
      }
      if (response.statusCode == 400) {
        Code.errorHandleFunction(Code.BAD_REQUEST);
        return response;
      }
      if (response.statusCode == 401) {
        Code.errorHandleFunction(Code.UNAUTHORIZED);
        return response;
      }
      if (response.statusCode == 403) {
        Code.errorHandleFunction(Code.FORBIDDEN);
        return response;
      }
      if (response.statusCode == 404) {
        Code.errorHandleFunction(Code.NOT_FOUND);
        return response;
      }
      if (response.statusCode >= 500) {
        Code.errorHandleFunction(Code.INTERNAL_SERVER_ERROR);
        return response;
      }
    } catch (e) {
      print(e.toString() + response.request.path);
      return response;
    }
  }
}