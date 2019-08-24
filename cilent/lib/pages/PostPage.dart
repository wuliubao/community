import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PostPageState();
}

class PostPageState extends State<PostPage> {
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