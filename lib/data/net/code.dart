import 'package:cdmsapp/event/http_error_event.dart';
import 'package:event_bus/event_bus.dart';

///错误编码
class Code {
  ///网络错误
  static const NETWORK_ERROR = -1;

  ///网络超时
  static const NETWORK_TIMEOUT = -2;

  ///网络返回数据格式化一次
  static const NETWORK_JSON_EXCEPTION = -3;

  static const SUCCESS = 200;
  static const BAD_REQUEST = 400;
  static const UNAUTHORIZED = 401;
  static const FORBIDDEN = 403;
  static const NOT_FOUND = 404;
  static const INTERNAL_SERVER_ERROR = 500;

  static final EventBus eventBus = new EventBus();

  // static errorHandleFunction(int code,String message, bool isFire) {
  //   if(isFire) {
  //     return message;
  //   }
  //   eventBus.fire(new HttpErrorEvent(code, message));
  //   return message;
  // }
  static void errorHandleFunction(int code) {
    eventBus.fire(new HttpErrorEvent(code,""));
  }

}
