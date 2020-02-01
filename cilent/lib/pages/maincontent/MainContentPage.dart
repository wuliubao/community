import 'package:cilent/pages/AllChannelPage.dart';
import 'package:cilent/pages/ContentListPage.dart';
import 'package:cilent/pages/InfoPostPage.dart';
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
//  PageController _pageController;
  PageController _pageController = PageController(initialPage: 0);

  int MainBottomTabPagesIndex = 0;

  //data list
  final List<Tab> myTabs = <Tab>[
    Tab(text: '头条'),
    Tab(text: '美食'),
    Tab(text: '找工作'),
    Tab(text: '亲子'),
    Tab(text: '城外'),
    Tab(text: '视频'),
    Tab(text: '家装'),
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

  Widget tabIcon(IconData iconData,String iconName, int index) =>  Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      IconButton(
        icon: Icon(iconData),
        color: index == -1 ? Colors.transparent: Colors.black,
        onPressed: () {
          if (index >= 0) {
            setState(() {
              MainBottomTabPagesIndex = index;
            });
          }
        },
      ),
      Text(iconName,style: TextStyle(fontSize: 12.0),),
    ],
  );

  //list Widget
  List<Widget> newsGen() => newsList.map((NewsBean newsBean) {
        return newsWidget(newsBean);
      }).toList();

  List<Widget> tabPages;

  List<Widget> MainBottomTabPages;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);

    tabPages = myTabs.map((Tab tab){
      final String label = tab.text.toLowerCase();

      if (label == "头条") {
        return HeadlinePage();
      } else {
        return SingleChannelPage(channelName: label);
      }
    }).toList();

    MainBottomTabPages = <Widget>[
      Scaffold(
        appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
        ),
        body: TabBarView(controller: _tabController, children: tabPages),
      ),
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
        title: Text("上虞"),
//        bottom: TabBar(
//          controller: _tabController,
//          tabs: myTabs,
//        ),
      ),
      body: MainBottomTabPages[MainBottomTabPagesIndex],
      //使用BottomAppBar代替BottomNavigationBar来显示中间曲线效果
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              tabIcon(Icons.home,"今日有料", 0),
              tabIcon(Icons.message,"大家在聊", 1),
              tabIcon(Icons.home,"", -1),
              tabIcon(Icons.explore,"发现", 2),
              tabIcon(Icons.account_circle,"我的", 3),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.of(context).push(
              new PageRouteBuilder(
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation secAnimation) {
                    return InfoPostPage();
                  })
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
