import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../details/details.dart';

class IndexWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return IndexWidgetState();
  }
}
class IndexWidgetState extends State<IndexWidget>{
  final List<Map> banners = [
    {
      "src":"images/2b.jpg",
      "name":"尼尔纪元-2B小姐姐"
    },
    {
      "src":"images/aisha.jpg",
      "name":"冰雪奇缘-艾莎女王"
    }
  ];
  final List<Map> indexList = [
    {
      "src":"images/2b.jpg",
      "name":"尼尔纪元-2B小姐姐",
      "content":"尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐"
    },
    {
      "src":"images/aisha.jpg",
      "name":"冰雪奇缘-艾莎女王",
      "content":"冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王"
    },
    {
      "src":"images/aisha.jpg",
      "name":"冰雪奇缘-艾莎女王",
      "content":"冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王"
    },
    {
      "src":"images/2b.jpg",
      "name":"尼尔纪元-2B小姐姐",
      "content":"尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐"
    },
    {
      "src":"images/2b.jpg",
      "name":"尼尔纪元-2B小姐姐",
      "content":"尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐,尼尔纪元-2B小姐姐"
    },
    {
      "src":"images/aisha.jpg",
      "name":"冰雪奇缘-艾莎女王",
      "content":"冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王,冰雪奇缘-艾莎女王"
    }
  ];
  List<Widget> _getIndexList(){
    var item = indexList.map((value){
      return new GestureDetector(
        onTap: _toDetails,
        child:new Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Image.asset(value["src"]),
              Container(
                padding: const EdgeInsets.all(5.0),
                child:Text(value["name"],style:TextStyle(fontSize: 16,)),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(5,0,5,0),
                  child: Text(value["content"],
                    maxLines: 2,
                    style: TextStyle(fontSize: 14, decoration: TextDecoration.none,color:Colors.black38),
                    overflow: TextOverflow.ellipsis,)
              ),
            ],
          ),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        )
      );
    });
    return item.toList();
  }
  void _toDetails(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsWidget(),
        settings: RouteSettings(
          arguments: {
            "title":"详情",
            "content":"详情内容..."
          }
        )),
    );
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("首页"),
          centerTitle: true,
        ),
        body:new Column(
          children: <Widget>[
            new CarouselSlider(
                items: banners.map((banner) {
                  return new Builder(
                    builder: (BuildContext context) {
                      return new GestureDetector(
                        onTap: _toDetails,
                        child: new Container(
                            width: MediaQuery.of(context).size.width,
                            margin: new EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: new BoxDecoration(
                                color: Colors.amber
                            ),
//                      child: new Image.asset(banner['src'], fit: BoxFit.fill)
                            child: new Stack(
                              alignment:AlignmentDirectional.bottomCenter,
                              children: <Widget>[
                                new Image.asset(
                                  banner['src'],
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.fill,
                                ),
                                new Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  decoration: new BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.3)
                                  ),
                                  child:Text(banner['name'],style: TextStyle(fontSize: 18.0,color:Colors.white,),),
                                  alignment: Alignment.center,
                                )
                              ],
                            )
                        ),
                      );
                    },
                  );
                }).toList(),
                height: 180.0,
                autoPlay: true,
            ),
            new SizedBox(height: 15),
            new Container(
              height: MediaQuery.of(context).size.height - 335,
              child: new CustomScrollView(
                primary: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(15),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: this._getIndexList()
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