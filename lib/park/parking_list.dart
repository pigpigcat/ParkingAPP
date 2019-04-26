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

          /// 增加点击效果
          child: new FlatButton(
              onPressed: () {
                print("点击了List");
              },
              child: new Padding(
                padding: new EdgeInsets.only(
                    left: 0.0, top: 0.0, right: 10.0, bottom: 10.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ///文本描述
                    new Container(
                        child: new Text(
                          "浦口区图书馆(浦口分馆)",
                          style: TextStyle(
                            color: Color(0xff959595),
                            fontSize: 14.0,
                          ),
                        ),
                        margin: new EdgeInsets.only(top: 6.0, bottom: 2.0),
                        alignment: Alignment.topLeft),
                    new Padding(padding: EdgeInsets.all(10.0)),
                  ],
                ),
              ))),
    );
  }
}
