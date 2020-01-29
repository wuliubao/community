import 'package:flutter/material.dart';

import 'package:cilent/Model/NewsBean.dart';

class MainContentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainContentPageState();
}

class MainContentPageState extends State<MainContentPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'ONE'),
    Tab(text: 'TWO'),
    Tab(text: 'THREE'),
    Tab(text: 'FOUR'),
    Tab(text: 'FIVE'),
    Tab(text: 'SIX'),
    Tab(text: 'SEVERN'),
  ];

  final List<NewsBean> newsList = <NewsBean>[
    new NewsBean(text: "1", url: "1.jpg"),
    new NewsBean(text: "2", url: "2.jpg"),
  ];

  Widget newsWidget(NewsBean newsBean) => Container(
        height: 100.0,
        color: Colors.redAccent,
        margin: EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 2.0),
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Text("news text"),
            Image.asset(newsBean.url),
          ],
        ),
      );

  List<Widget> newsGen() => newsList.map((NewsBean newsBean) {
        return newsWidget(newsBean);
      }).toList();

  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);

  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          final String label = tab.text.toLowerCase();
//          return Center(
//            child: Text(
//              'This is the $label tab',
//              style: const TextStyle(fontSize: 36),
//            ),
//          );
          return CustomScrollView(
            slivers: <Widget>[
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
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.transparent,
                icon: Icon(Icons.hotel),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.hotel),
                onPressed: () {},
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
