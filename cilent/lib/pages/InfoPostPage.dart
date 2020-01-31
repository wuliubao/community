import 'package:flutter/material.dart';

class InfoPostPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InfoPostPageState();
}

class InfoPostPageState extends State<InfoPostPage> {
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