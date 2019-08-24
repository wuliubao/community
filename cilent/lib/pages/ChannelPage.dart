import 'package:flutter/material.dart';

class ChannelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChannelPageState();
}

class ChannelPageState extends State<ChannelPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("channel")),
      body: Container(
          alignment: Alignment.center,
          child: Text("channel content")
      ),
    );
  }

}