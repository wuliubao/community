import 'package:flutter/material.dart';
import 'Constant.dart';

import 'pages/LoginPage.dart';
import 'pages/maincontent/MainContentPage.dart';
import 'pages/PostPage.dart';
import 'pages/ChannelPage.dart';
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
      home: new LoginPage(),
      routes: <String, WidgetBuilder>{
        Constant.PAGE_LOGIN: (BuildContext context) => new LoginPage(),
        Constant.PAGE_MAIN_CONTENT: (BuildContext context) => new MainContentPage(),
        Constant.PAGE_POST: (BuildContext context) => new PostPage(),
        Constant.PAGE_CHANNEL: (BuildContext context) => new ChannelPage(),
        Constant.PAGE_DETAIL: (BuildContext context) => new DetailPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
