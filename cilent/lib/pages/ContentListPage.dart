import 'package:flutter/material.dart';

class ContentListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ContentListPageState();
}

class ContentListPageState extends State<ContentListPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white10,
        child: ListView.builder(
          padding: new EdgeInsets.all(5.0),
          itemCount: 5,
          itemExtent: 50.0,
          itemBuilder: (BuildContext context,int index){
            return Row(children: <Widget>[
              Text("中心"),
              Text("查天气")
            ],);
          },
        )
    );
  }

}