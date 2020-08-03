import 'package:flutter/material.dart';

class DetailsWidget extends StatefulWidget {
  final Map detail_item;
  DetailsWidget(this.detail_item);
  DetailsWidgetState createState() => DetailsWidgetState();
}

class DetailsWidgetState extends State<DetailsWidget>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("${widget.detail_item["title"]}"),
          centerTitle: true,
        ),
        body:new Column(
          children: <Widget>[
            Image.asset(widget.detail_item["src"]),
            new Container(
              padding: const EdgeInsets.all(20),
              child: Text("${widget.detail_item["content"]}"),
            )
          ],
        )
    );
  }
}