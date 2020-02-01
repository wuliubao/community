import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CommentItemState();
}

class CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Colors.indigo,
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
            ],),
            Row(children: <Widget>[
              Icon(Icons.add),
              Text("1"),
            ],)
          ],
          ),
          Text("content"),
        ],
      ),
    );
  }

}