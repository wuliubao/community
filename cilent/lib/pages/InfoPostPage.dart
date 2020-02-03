import 'package:flutter/material.dart';

class InfoPostPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoPostPageState();
}

class InfoPostPageState extends State<InfoPostPage> {
  Widget infoItem(IconData iconD, String title, String tip) => Container(
        width: 220.0,
        margin: EdgeInsets.all(10),
//    color:Colors.amberAccent,
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(iconD)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: TextStyle(fontSize: 15.0)),
                Text(tip, style: TextStyle(fontSize: 12.0)),
              ],
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            infoItem(Icons.reorder, "随便聊聊", "晒晒新鲜事，和社友聊家常"),
            infoItem(Icons.videocam, "小视频", "可以添加滤镜、音乐啦"),
            infoItem(Icons.favorite, "同城互助", "求助生活问题，打听周边信息"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment Counter',
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.of(context).pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
