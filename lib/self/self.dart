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
      body:new Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: new BoxDecoration(
              color: Colors.blue,
            ),
            padding: const EdgeInsets.fromLTRB(20,10,20,0),
            child: new Row(
              children: <Widget>[
                new Container(
                  width: 100,
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("images/2b.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                new Column(
                  children: <Widget>[
                    new Container(
                      width:200,
                      padding: const EdgeInsets.fromLTRB(20,55,20,20),
                      child:Text("布里茨",textAlign:TextAlign.start,style:TextStyle(fontSize: 18,color:Colors.white,fontWeight: FontWeight.bold)),
                    ),
                    new Container(
                      width:200,
                      padding: const EdgeInsets.fromLTRB(20,0,20,0),
                      child:Text("flutter练习生",textAlign:TextAlign.start,style:TextStyle(fontSize: 16,color:Colors.white,fontWeight: FontWeight.bold)),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 15,
            decoration: new BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            decoration: BoxDecoration(
                border: Border(bottom:BorderSide(color:Colors.grey[200],width: 1))///边框颜色、宽
            ),
            child: new Row(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.fromLTRB(0,0,10,0),
                      child: Icon(
                        Icons.apps,
                        size: 30.0,
                        color: Colors.black54,
                      ),
                    ),
                    new Container(
                      child: Text("菜单1",style:TextStyle(fontSize: 16,color:Colors.black54,)),
                    ),
                  ],
                ),
                Expanded(
                  child: Text(''), // 中间用Expanded控件
                ),
                new Container(
                  child: Icon(
                    Icons.chevron_right,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            padding: const EdgeInsets.fromLTRB(10,0,10,0),
            decoration: BoxDecoration(
                border: Border(bottom:BorderSide(color:Colors.grey[200],width: 1))///边框颜色、宽
            ),
            child: new Row(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.fromLTRB(0,0,10,0),
                      child: Icon(
                        Icons.apps,
                        size: 30.0,
                        color: Colors.black54,
                      ),
                    ),
                    new Container(
                      child: Text("菜单2",style:TextStyle(fontSize: 16,color:Colors.black54,)),
                    ),
                  ],
                ),
                Expanded(
                  child: Text(''), // 中间用Expanded控件
                ),
                new Container(
                  child: Icon(
                    Icons.chevron_right,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}