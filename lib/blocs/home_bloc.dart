import 'package:cdmsapp/blocs/bloc_provider.dart';
import 'package:cdmsapp/data/model/models.dart';
import 'package:cdmsapp/data/net/request_api.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc implements BlocBase {
  BehaviorSubject<List<Video>> _recommond;
  RequestAPI api;

  HomeBloc(){
    _recommond = new BehaviorSubject<List<Video>>();
     api = new RequestAPI();
  }
  @override
  void dispose() {
    _recommond.close();
  }

  void getRecommend() async{
    await api.getRecommend().then((list){
      _recommond.add(list.contents);
    });
  }
}