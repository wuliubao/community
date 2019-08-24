import 'package:flutter/material.dart';

class MainContentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainContentPageState();
}

class MainContentPageState extends State<MainContentPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post")),
      body: Container(
          alignment: Alignment.center,
          child: Text("Post content")
      ),
    );
  }

}