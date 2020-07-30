import 'package:flutter/material.dart';

class SelfWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return SelfWidgetState();
  }
}

class SelfWidgetState extends State<SelfWidget>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("我的"),
        centerTitle: true,
      ),
      body:new Column(
        children: <Widget>[
          new Container(
            padding: const EdgeInsets.all(20),
            child: Text("开发中..."),
          )
        ],
      )
    );
  }
}