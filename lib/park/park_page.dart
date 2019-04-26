import 'package:flutter/material.dart';
import '../global_config.dart';
import 'parking_list.dart';

class ParkPage extends StatefulWidget {
  @override
  _ParkPageState createState() => new _ParkPageState();
}

class _ParkPageState extends State<ParkPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('停车场'),
          ),
          body: new ListView.builder(
            itemBuilder: (context, index) {
              return new ParkingList();
            },
            itemCount: 10,
          ),
        ),
        theme: GlobalConfig.themeData);
  }
}
