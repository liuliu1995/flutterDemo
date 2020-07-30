import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return DetailsWidgetState();
  }
}
class DetailsWidgetState extends State<DetailsWidget>{
  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(args["title"]),
          centerTitle: true,
        ),
        body:new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(20),
              child: Text(args["content"]),
            )
          ],
        )
    );
  }
}