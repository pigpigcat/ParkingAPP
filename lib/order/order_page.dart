import 'package:flutter/material.dart';
import '../global_config.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => new _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('订单'),
          ),
          body: new Center(child: null),
        ),
        theme: GlobalConfig.themeData);
  }
}
