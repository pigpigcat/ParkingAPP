import 'package:flutter/material.dart';

class ParkingList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ParkingListState();
}

class _ParkingListState extends State<ParkingList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      /// 卡片包装
      child: new Card(
          child: new Padding(
        padding: new EdgeInsets.only(
            left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              child: new Icon(Icons.edit_location),
              padding: EdgeInsets.only(right: 10.0),
            ),
            new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      "浦口区图书馆(浦口分馆)",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    padding: EdgeInsets.only(bottom: 5.0),
                  ),
                  new Container(
                    child: new Text(
                      "江苏省-南京市-浦口区-新马路3号",
                      style: TextStyle(fontSize: 10.0),
                    ),
                  )
                ],
              ),
//              padding: EdgeInsets.only(left: 10.0),
            ),
            new Container(
              child: new Column(
                children: <Widget>[new Icon(Icons.drive_eta), new Text("路线")],
              ),
            )
          ],
        ),
      )),
    );
  }
}
