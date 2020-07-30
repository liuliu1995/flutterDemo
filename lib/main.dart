import 'package:flutter/material.dart';
import './index/index.dart';
import './self/self.dart';
import './details/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/details': (context) => DetailsWidget(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _widgetItems = [IndexWidget(),SelfWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.home),title:Text('首页')),
          BottomNavigationBarItem(icon:Icon(Icons.people),title:Text('我的'))
        ],
        currentIndex: _selectedIndex,//默认选中
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed, //类型为fixed
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetItems[_selectedIndex],
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 刷新界面
    });
  }
}
