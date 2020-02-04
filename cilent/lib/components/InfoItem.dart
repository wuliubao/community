import 'package:flutter/material.dart';

class InfoItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoItemState();
}

class InfoItemState extends State<InfoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipOval(
                child: Image.asset("assets/images/placeholder.png",width: 40,height: 40,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//              color: Colors.blueAccent,
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                Text("发布者ID号", style: TextStyle(fontSize: 15.0,fontWeight:FontWeight.bold),),
                Text("10分钟前", style: TextStyle(fontSize: 13.0,color: Colors.grey)),
              ],),
            ),

          ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Text('发布的内容，展示社友发布的最新信息,此元素为最基本的社区最基本元素', style: TextStyle(fontSize: 15.0),),
          ),
          Wrap(
            spacing: 10.0,
            children: <Widget>[
              Image.asset("assets/images/placeholder.png", width: 100,height: 100,),
              Image.asset("assets/images/placeholder.png", width: 100,height: 100,),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 1, color: Colors.black12))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Row(children: <Widget>[Text("赞")],),
              Row(children: <Widget>[Text("评论")],),
            ],),
          ),

        ],
      ),
    );
  }

}