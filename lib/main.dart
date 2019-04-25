import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(new Parking());

class Parking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "天津停车APP",
      home: new Index(),
    );
  }
}
