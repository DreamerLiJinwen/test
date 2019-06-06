import 'package:cdmsapp/data/model/models.dart';
import 'package:cdmsapp/data/net/requestAPI.dart';

void main() async {
// new Future(() => futureTask)  //  异步任务的函数
//         .then((m) => "futueTask execute result:$m")  //   任务执行完后的子任务
//         .then((m) => m.length)  //  其中m为上个任务执行完后的返回的结果
//         .then((m) => printLength(m))
//         .whenComplete(() => whenTaskCompelete());  //  当所有任务完成后的回调函数

  RequestAPI api = new RequestAPI();
  List<Video> list = await api.getRecommend();
  print(list);
}

int futureTask() {
  return 21;
}

void printLength(int length) {
  print("Text Length:$length");
}

void whenTaskCompelete() {
  print("Task Complete");
}
