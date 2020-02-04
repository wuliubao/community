import 'package:cilent/components/CommentItem.dart';
import 'package:cilent/components/InfoItem.dart';
import 'package:flutter/material.dart';

class InnerTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InnerTabViewState();
}

class InnerTabViewState extends State<InnerTabView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: <Tab>[
              Tab(text: "最新发布"),
              Tab(text: "精华帖"),
            ]),
        Container(
          height: 1400.0,
          color: Colors.black12,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Column(
                children: <Widget>[
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                ],
              ),
              Column(
                children: <Widget>[
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                  InfoItem(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
