import 'package:flutter/material.dart';

class InfoItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoItemState();
}

class InfoItemState extends State<InfoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.deepPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            new ClipOval(
              child: new Image.asset("assets/images/placeholder.png",width: 50,height: 50,),
            ),
            Column(children: <Widget>[
              Text("name"),
              Text("time"),
            ],)
          ],
          ),
          Text("content"),
          Row(
            children: <Widget>[
              Image.asset("assets/images/placeholder.png", width: 50,height: 50,),
              Image.asset("assets/images/placeholder.png", width: 50,height: 50,),
            ],
          ),
          Row(children: <Widget>[
            Row(children: <Widget>[Text("赞")],),
            Row(children: <Widget>[Text("评论")],),
          ],),
        ],
      ),
    );
  }

}