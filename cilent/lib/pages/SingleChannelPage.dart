import 'package:cilent/components/InfoItem.dart';
import 'package:cilent/components/InnerTabView.dart';
import 'package:flutter/material.dart';

class SingleChannelPage extends StatefulWidget {

  final String channelName;

  SingleChannelPage({this.channelName});

  @override
  State<StatefulWidget> createState() => SingleChannelPageState();
}

class SingleChannelPageState extends State<SingleChannelPage> with SingleTickerProviderStateMixin{

  String channelName;


  @override
  void initState() {
    channelName = widget.channelName;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/food.jpg",),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.all(10),
                    child: Text(channelName, style: TextStyle(fontSize: 16.0,fontWeight:FontWeight.bold, color: Colors.white),),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("讨论数：10000", style: TextStyle(fontSize: 12.0, color: Colors.white),),
                      Text("今日：200", style: TextStyle(fontSize: 12.0, color: Colors.white),),
                      Text("更多>", style: TextStyle(fontSize: 12.0, color: Colors.white),),
                    ],
                  )
                ],
              ),
            ),
        ),
        SliverToBoxAdapter(
          child: InnerTabView(),
        )
      ],
    );
  }

}