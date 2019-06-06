import 'package:flutter/material.dart';
import 'package:cdmsapp/ui/pages/index.dart';

class AppPage extends StatefulWidget {
  AppPage({Key key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _widgetOpitons<Widget> = [
    Text("Index 0 : 主页"),
    Text("Index 1 : 搜索"),
    Text("Index 2 : 我"),
  ];
  int _selectedIndex = 0;
  HomeBloc homeBloc;

  _AppPageState() {
    homeBloc = new HomeBloc();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getRecommend();
  }

  @override
  Widget build(BuildContext context) {
    // var _homeBloc = new HomeBloc();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("CDMSAPP"),
      ),
      body: Center(
        child: _widgetOpitons.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("主页")),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("搜索")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("我")),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _getRecommend() {
    print(homeBloc.getRecommend());
  }
}
