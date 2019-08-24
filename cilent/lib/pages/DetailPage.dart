import 'package:flutter/material.dart';

import 'maincontent/MainContentPage.dart';

class DetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("channel")),
      body: Container(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  new PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation secAnimation) {
                        return new MainContentPage();
                      })
              );
            },
            child: Text("channel content"),
          )
      ),
    );
  }

}