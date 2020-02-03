import 'package:cilent/Model/ChannelItem.dart';
import 'package:cilent/components/InnerTabView.dart';
import 'package:flutter/material.dart';

import 'package:cilent/components/InfoItem.dart';
import 'package:cilent/components/CommentItem.dart';

class AllChannelPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AllChannelPageState();
}

class AllChannelPageState extends State<AllChannelPage> {

  PageController _pageController = PageController(initialPage: 0);


  @override
  void initState() {
    super.initState();
  }

  List<ChannelItem> channelList = [
    ChannelItem(icon: "assets/images/placeholder.png",text: "a"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "a"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "a"),
  ];

  Widget channelItemWidget(ChannelItem item) =>
      Column(
        children: <Widget>[
          new ClipOval(
            child: new Image.asset("assets/images/placeholder.png",width: 50,height: 50,),
          ),
          Text(item.text),
        ],
      );

  List<Widget> channelItemGen () =>
      channelList.map((ChannelItem item){
        return channelItemWidget(item);
      }).toList();


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Container(
            height: 150,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: <Widget>[
                Wrap(children:channelItemGen()),
                Wrap(children:channelItemGen()),
                Wrap(children:channelItemGen()),
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