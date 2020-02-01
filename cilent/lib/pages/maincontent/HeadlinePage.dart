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
            color: Colors.red,
            margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
            child: PageView.builder(
              itemBuilder:  (context, index) {
                return Center(
                  child: Text("aaa"),  //每个页面展示的组件
                );
              },
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              controller: _pageController,
              onPageChanged: _onPageChange,
            ),  //每个页面展示的组件
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget buildd(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),

      ),
      body:  PageView.builder(
        itemBuilder:  (context, index) {
          return Center(
            child: Text("aaa"),  //每个页面展示的组件
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        controller: _pageController,
        onPageChanged: _onPageChange,
      ),

    );
  }
}