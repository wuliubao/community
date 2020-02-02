import 'package:flutter/material.dart';

class DummyComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DummyComponentState();
}

class DummyComponentState extends State<DummyComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          color: Colors.blueAccent,
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          child: Text("占位组件")
      ),
    );
  }

}