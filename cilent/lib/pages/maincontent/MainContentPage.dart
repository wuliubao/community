import 'package:cilent/pages/AllChannelPage.dart';
import 'package:cilent/pages/ContentListPage.dart';
import 'package:cilent/pages/PersonInfoPage.dart';
import 'package:cilent/pages/SingleChannelPage.dart';
import 'package:cilent/pages/maincontent/HeadlinePage.dart';
import 'package:cilent/pages/DummyPage.dart';
import 'package:flutter/material.dart';

import 'package:cilent/Model/NewsBean.dart';

class MainContentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainContentPageState();
}

class MainContentPageState extends State<MainContentPage> with SingleTickerProviderStateMixin {

  TabController _tabController;
  PageController _pageController;

  List<Widget> MainBottomTabPages;
  int MainBottomTabPagesIndex = 0;

  //data list
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


  //Widget
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

  Widget tabIcon(IconData iconData, int index) =>  IconButton(
    icon: Icon(iconData),
    color: index == -1 ? Colors.transparent: Colors.black,
    onPressed: () {
      if (index >= 0) {
        setState(() {
          MainBottomTabPagesIndex = index;
        });
      }
    },
  );

  //list Widget
  List<Widget> newsGen() => newsList.map((NewsBean newsBean) {
        return newsWidget(newsBean);
      }).toList();

  List<Widget> tabPages = <Widget>[
    HeadlinePage(),
    SingleChannelPage(channelName: "美食"),
    SingleChannelPage(channelName: "找工作"),
    SingleChannelPage(channelName: "亲子"),
    DummyPage(),
    DummyPage(),
    DummyPage(),
  ];


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);

    MainBottomTabPages = <Widget>[
      TabBarView(controller: _tabController, children: tabPages),
      AllChannelPage(),
      ContentListPage(),
      PersonInfoPage(),
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: MainBottomTabPages[MainBottomTabPagesIndex],
      //使用BottomAppBar代替BottomNavigationBar来显示中间曲线效果
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              tabIcon(Icons.home, 0),
              tabIcon(Icons.hotel, 1),
              tabIcon(Icons.home, -1),
              tabIcon(Icons.home, 2),
              tabIcon(Icons.home, 3),
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
