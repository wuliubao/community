import 'package:flutter/material.dart';

import 'package:cilent/components/InfoItem.dart';
import 'package:cilent/components/CommentItem.dart';

class AllChannelPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => AllChannelPageState();
}

class AllChannelPageState extends State<AllChannelPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Text("1"),
            Text("2"),
            Text("3"),
            InfoItem(),
            CommentItem(),
          ],
        )
    );
  }

}