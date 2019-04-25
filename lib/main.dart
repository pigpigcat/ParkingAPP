import 'package:flutter/material.dart';
// 引入 english_words
import 'package:english_words/english_words.dart';

// main函数使用了(=>)符号, 这是Dart中单行函数或方法的简写
void main() => runApp(new MyApp());


// 该应用程序继承了 StatelessWidget，这将会使应用本身也成为一个widget。
// 在Flutter中，大多数东西都是widget，包括对齐(alignment)、填充(padding)和布局(layout)
// widget的主要工作是提供一个build()方法来描述如何根据其他较低级别的widget来显示自己。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      // Scaffold 是 Material library 中提供的一个widget, 它提供了默认的导航栏、
      // 标题和包含主屏幕widget树的body属性。widget树可以很复杂。
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
