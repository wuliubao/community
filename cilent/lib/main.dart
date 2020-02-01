import 'package:flutter/material.dart';
import 'Constant.dart';

import 'pages/LoginPage.dart';
import 'pages/maincontent/MainContentPage.dart';
import 'pages/InfoPostPage.dart';
import 'pages/SingleChannelPage.dart';
import 'pages/DetailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShangYu Community',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MainContentPage(),
      routes: <String, WidgetBuilder>{
        Constant.PAGE_LOGIN: (BuildContext context) => new LoginPage(),
        Constant.PAGE_MAIN_CONTENT: (BuildContext context) => new MainContentPage(),
        Constant.PAGE_POST: (BuildContext context) => new InfoPostPage(),
        Constant.PAGE_CHANNEL: (BuildContext context) => new SingleChannelPage(),
        Constant.PAGE_DETAIL: (BuildContext context) => new DetailPage(),
      },
    );
  }
}
