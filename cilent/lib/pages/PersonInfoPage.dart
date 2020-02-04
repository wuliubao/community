import 'package:flutter/material.dart';
import 'package:cilent/Model/ChannelItem.dart';

class PersonInfoPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => PersonInfoPageState();
}

class PersonInfoPageState extends State<PersonInfoPage> {

  Widget channelItemWidget(ChannelItem item) => Container(
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

  Widget infoItemWidget(String number, String title) => Container(
    width: 50.0,
//    color: Colors.red,
    child: Column(
      children: <Widget>[
        Container(
          child: Text(number),
        ),
        Container(
          margin: EdgeInsets.only(top:5),
          child: Text(title),
        )
      ],
    ),
  );

  List<ChannelItem> channelList = [
    ChannelItem(icon: "assets/images/placeholder.png",text: "金币商城"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "每日签到"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "任务中心"),
    ChannelItem(icon: "assets/images/placeholder.png",text: "游戏大厅"),
  ];

  List<Widget> channelItemGen () =>
      channelList.map((ChannelItem item){
        return channelItemWidget(item);
      }).toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[

        SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(20),
              color:Colors.grey[100],
              height: 280,
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  ClipOval(
                    child: Image.asset("assets/images/placeholder.png",width: 80,height: 80,),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(crossAxisAlignment:CrossAxisAlignment.start,children: <Widget>[
                      Text("用户者昵称", style: TextStyle(fontSize: 20.0,fontWeight:FontWeight.bold),),
                      Text("等级", style: TextStyle(fontSize: 15.0,color: Colors.grey)),
                    ],),
                  ),
                ],),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Wrap(alignment:WrapAlignment.center,spacing:40,children: <Widget>[
                  infoItemWidget("20", "金币"),
                  infoItemWidget("10", "帖子"),
                  infoItemWidget("11", "关注"),
                  infoItemWidget("14", "粉丝"),
                ],),),
                Container(child: Wrap(alignment:WrapAlignment.center,spacing:40,children:channelItemGen()),),
              ],),
            )
        ),
//        SliverGrid(
//          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//            maxCrossAxisExtent: 200.0,
//            mainAxisSpacing: 10.0,
//            crossAxisSpacing: 10.0,
//            childAspectRatio: 4.0,
//          ),
//          delegate: SliverChildBuilderDelegate(
//                (BuildContext context, int index) {
//              return Container(
//                alignment: Alignment.center,
//                color: Colors.teal[100 * (index % 9)],
//                child: Text('Grid Item $index'),
//              );
//            },
//            childCount: 4,
//          ),
//        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
              return Container(
//                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                height: 50.0,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: Colors.grey[100])),
                    color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Row(children: <Widget>[
                      ClipOval(
                        child: Image.asset("assets/images/placeholder.png",width: 30,height: 30,),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:15),
                        child: Text("我的物品",style: TextStyle(fontSize: 14.0),),
                      ),

                    ],),
                    Text(" >")
                  ],),
              );
            },childCount: 7
          ),
        ),
      ],
    );
  }

}