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
    Tab(text: '同城互助'),
    Tab(text: '房产'),
    Tab(text: '二手闲置'),
    Tab(text: '同城活动'),
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

  Widget tabIcon(IconData iconData,String iconName, int index) => GestureDetector(
      onTap:() {
        if (index >= 0) {
          setState(() {
            MainBottomTabPagesIndex = index;
          });
        }
      },
      child:  Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
//        color:Colors.red,
        width: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(iconData,color: MainBottomTabPagesIndex == index ? Colors.blue: Colors.grey),
            Text(iconName,style:
            MainBottomTabPagesIndex == index ?
            TextStyle(fontSize: 12.0,color: Colors.blue):TextStyle(fontSize: 12.0,color: Colors.grey)),
          ],
        ),
      )
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
      Column(
        children: <Widget>[
          TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            isScrollable:true,
            controller: _tabController,
            tabs: myTabs,
          ),
          Expanded(
//            height: 300,
            child: TabBarView(controller: _tabController, children: tabPages),
          )
        ],
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
//        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Center(child: Text("上虞",style: TextStyle(fontSize: 16.0,color: Colors.black),),),
        title: Container(
          width: 220.0,
          height: 30.0,
          child: TextField(
            decoration: InputDecoration(
              border:InputBorder.none,
              filled: true,
              fillColor: Colors.black12,
              hintText: "搜索内容或用户",
              hintStyle: TextStyle(fontSize: 12),
              prefixIcon: Icon(Icons.search,color: Colors.black12,),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.filter_center_focus),),
          IconButton(icon: Icon(Icons.notifications_none),),
        ],
      ),
      body: MainBottomTabPages[MainBottomTabPagesIndex],
      //使用BottomAppBar代替BottomNavigationBar来显示中间曲线效果
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              tabIcon(Icons.whatshot,"今日有料", 0),
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
