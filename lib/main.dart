import 'package:flutter/material.dart';
import 'index/index.dart';

/// 主函数入口
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
