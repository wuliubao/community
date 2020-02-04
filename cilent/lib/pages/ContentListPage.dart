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
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              height: 50.0,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(width: 1, color: Colors.grey[100])),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                Row(children: <Widget>[
                  ClipOval(
                    child: Image.asset("assets/images/placeholder.png",width: 30,height: 30,),
                  ),
                  Container(
                    margin: EdgeInsets.only(left:15),
                    child: Text("任务中心",style: TextStyle(fontSize: 15.0),),
                  ),

                ],),
                Row(children: <Widget>[
                  Text("选择"),
                  Text(" >")
                ],)
              ],),
            );
          },
        )
    );
  }

}