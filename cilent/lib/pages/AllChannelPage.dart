import 'package:cilent/Model/ChannelItem.dart';
import 'package:cilent/components/InnerTabView.dart';
import 'package:flutter/material.dart';

import 'package:cilent/components/InfoItem.dart';
import 'package:cilent/components/CommentItem.dart';

class AllChannelPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AllChannelPageState();
}

class AllChannelPageState extends State<AllChannelPage> with SingleTickerProviderStateMixin{

  PageController _pageController = PageController(initialPage: 0);


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);

  }

  List<ChannelItem> channelList = [
    ChannelItem(icon: "assets/images/placeholder.png",text: "同城互助"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "视频"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "新鲜事"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "找工作"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "二手闲置"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "亲子"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "美食"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "车友会"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "顺风车"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "找对象"),
  ];

  Widget channelItemWidget(ChannelItem item) => Container(
//    margin: EdgeInsets.all(5),
//    color: Colors.red,
    child: Column(
      children: <Widget>[
        new ClipOval(
          child: new Image.asset("assets/images/placeholder.png",width: 50,height: 50,),
        ),
        Container(
          margin: EdgeInsets.only(top:5),
          child: Text(item.text),
        )
      ],
    ),
  );

  List<Widget> channelItemGen () =>
      channelList.map((ChannelItem item){
        return channelItemWidget(item);
      }).toList();

  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 180,
            color: Colors.white10,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: <Widget>[
                Wrap(alignment:WrapAlignment.center,spacing:30, runSpacing: 10,children:channelItemGen()),
                Wrap(alignment:WrapAlignment.center,spacing:30, runSpacing: 10,children:channelItemGen()),
                Wrap(alignment:WrapAlignment.center,spacing:30, runSpacing: 10,children:channelItemGen()),
              ],
            ),
          )
        ),
        SliverToBoxAdapter(
            child: InnerTabView(),
        )
      ],
    );
  }

}