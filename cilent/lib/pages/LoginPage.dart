import 'package:flutter/material.dart';

import 'maincontent/MainContentPage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
//      body: Container(
//        alignment: Alignment.center,
//        child: GestureDetector(
//          onTap: () {
//            print("jump");
//            Navigator.of(context).push(
//                new PageRouteBuilder(
//                    pageBuilder: (BuildContext context, Animation<double> animation, Animation secAnimation) {
//                      return new MainContentPage();
//                    })
//            );
//          },
//          child: Text("login content"),
//        )
//      ),
      body: Column(
          children: <Widget>[
            Text("短信验证登录|注册"),

          ],
      ),
    );
  }

}