import 'package:cilent/components/InfoItem.dart';
import 'package:flutter/material.dart';

class SingleChannelPage extends StatefulWidget {

  final String channelName;

  SingleChannelPage({this.channelName});

  @override
  State<StatefulWidget> createState() => SingleChannelPageState();
}

class SingleChannelPageState extends State<SingleChannelPage> {

  String channelName;


  @override
  void initState() {
    channelName = widget.channelName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/food.jpg",),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(channelName, style: TextStyle(fontSize: 16.0, color: Colors.white),),
              ),
            ),
          ],
        )
    );
  }

}