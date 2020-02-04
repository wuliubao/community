import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadlinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HeadlinePageState();
}

class HeadlinePageState extends State<HeadlinePage> {

  PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
//    _pageController = PageController();
    super.initState();
  }

  void _onPageChange(int index) {
    print("_onPageChange");
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[

        SliverToBoxAdapter(
          child: Container(
            height: 150.0,
//            color: Colors.red,
//            margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
            child: PageView.builder(
              itemBuilder:  (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
                  child: Image.asset("assets/images/news$index.jpg", fit:BoxFit.cover),
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              controller: _pageController,
              onPageChanged: _onPageChange,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                padding: EdgeInsets.all(10.0),
//                color: Colors.red,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.black12))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
//                      color: Colors.blueAccent,
                      width:200.0,
                      child: Text('新闻发布第$index条，展示最新头条新闻消息', style: TextStyle(fontSize: 15.0),),),
                  Container(
                    color: Colors.indigo,
                    width: 150.0,
                    height: 100.0,
                    child: Image.asset("assets/images/placeholder.png",fit:BoxFit.cover),
                  )

                ],),
              );
            },childCount:50
          ),
        ),
      ],
    );
  }
}