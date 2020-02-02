import 'package:flutter/material.dart';

class InnerTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InnerTabViewState();
}

class InnerTabViewState extends State<InnerTabView> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Text("占位组件")
    );
  }

}