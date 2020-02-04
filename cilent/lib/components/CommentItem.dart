import 'package:flutter/material.dart';

class CommentItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CommentItemState();
}

class CommentItemState extends State<CommentItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: EdgeInsets.all(10.0),
      color: Colors.indigo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipOval(
              child: new Image.asset("assets/images/placeholder.png",width: 40,height: 40,),
            ),

              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//              color: Colors.blueAccent,
                child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                  Text("用户ID", style: TextStyle(fontSize: 15.0,fontWeight:FontWeight.bold),),
                  Text("2月2日 16：15", style: TextStyle(fontSize: 13.0,color: Colors.grey)),
                ],),
              ),
            Container(),
//            Row(children: <Widget>[
//              Icon(Icons.add),
//              Text("1"),
//            ],)
          ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text('用户评论内容展示', style: TextStyle(fontSize: 15.0),),
          ),
        ],
      ),
    );
  }

}