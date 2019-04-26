import 'package:flutter/material.dart';
import 'global_config.dart';

class SearchPage extends StatefulWidget {
  @override
  SearchPageState createState() => new SearchPageState();
}

class SearchPageState extends State<SearchPage> {
// Flutter中几乎所有对象都是一个Widget，Widget的功能是“描述一个UI元素的配置数据”,
// Flutter中真正代表屏幕上显示元素的类是Element，真正渲染时，UI树的每一个Widget节点都会对应一个Element对象
  Widget searchInput() {
    // Container 创建矩形视觉元素。
    return new Container(
      // Row创建水平方向灵活布局,Column同理。基于Web的flex模型。
      child: new Row(
        children: <Widget>[
          new Container(
            // FlatButton:扁平按钮,默认背景透明并不带阴影。RaisedButton、OutlineButton、IconButton
            child: new FlatButton.icon(
              // 回调函数
              onPressed: () {
                // context由flutter自动注入,这行代码意思是路由出栈。
                Navigator.of(context).pop();
              },
              icon: new Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: new Text(""),
            ),
            width: 60.0,
          ),
          // Expanded:按比例“扩伸”Row、Column和Flex子widget所占用的空间。
          new Expanded(
            // TextField用于文本输入
            child: new TextField(
              autofocus: true,
              decoration: new InputDecoration.collapsed(
                  hintText: "搜索内容",
                  hintStyle: new TextStyle(color: GlobalConfig.fontColor)),
            ),
          )
        ],
      ),
      decoration: new BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
          color: GlobalConfig.searchBackgroundColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: GlobalConfig.themeData,
        home: new Scaffold(
            appBar: new AppBar(
              title: searchInput(),
            ),
            body: new SingleChildScrollView(
              child: new Column(
                children: <Widget>[
                  new Container(
                    child: new Text("热搜",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    margin: const EdgeInsets.only(
                        top: 16.0, left: 16.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        child: new Chip(
                          label: new FlatButton(
                              onPressed: () {},
                              child: new Text(
                                "汽车关税下调",
                                style: new TextStyle(
                                    color: GlobalConfig.fontColor),
                              )),
                          backgroundColor: GlobalConfig.dark == true
                              ? Colors.white10
                              : Colors.black12,
                        ),
                        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                        alignment: Alignment.topLeft,
                      ),
                      new Container(
                        child: new Chip(
                          label: new FlatButton(
                              onPressed: () {},
                              child: new Text("李彦宏传闻辟谣",
                                  style: new TextStyle(
                                      color: GlobalConfig.fontColor))),
                          backgroundColor: GlobalConfig.dark == true
                              ? Colors.white10
                              : Colors.black12,
                        ),
                        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        child: new Chip(
                          label: new FlatButton(
                              onPressed: () {},
                              child: new Text("小米8",
                                  style: new TextStyle(
                                      color: GlobalConfig.fontColor))),
                          backgroundColor: GlobalConfig.dark == true
                              ? Colors.white10
                              : Colors.black12,
                        ),
                        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                        alignment: Alignment.topLeft,
                      ),
                      new Container(
                        child: new Chip(
                          label: new FlatButton(
                              onPressed: () {},
                              child: new Text("超时空同居",
                                  style: new TextStyle(
                                      color: GlobalConfig.fontColor))),
                          backgroundColor: GlobalConfig.dark == true
                              ? Colors.white10
                              : Colors.black12,
                        ),
                        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                  new Container(
                    child: new Text("搜索历史",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                    margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                    alignment: Alignment.topLeft,
                  ),
                  new Container(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          child: new Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                          margin: const EdgeInsets.only(right: 12.0),
                        ),
                        new Expanded(
                          child: new Container(
                            child: new Text(
                              "业余兴趣",
                              style: new TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                          ),
                        ),
                        new Container(
                          child: new Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 10.0),
                    padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: new BoxDecoration(
                        border: new BorderDirectional(
                            bottom: new BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))),
                  ),
                  new Container(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          child: new Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                          margin: const EdgeInsets.only(right: 12.0),
                        ),
                        new Expanded(
                          child: new Container(
                            child: new Text(
                              "三体",
                              style: new TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                          ),
                        ),
                        new Container(
                          child: new Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 10.0),
                    padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: new BoxDecoration(
                        border: new BorderDirectional(
                            bottom: new BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))),
                  ),
                  new Container(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          child: new Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                          margin: const EdgeInsets.only(right: 12.0),
                        ),
                        new Expanded(
                          child: new Container(
                            child: new Text(
                              "人类未来",
                              style: new TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                          ),
                        ),
                        new Container(
                          child: new Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                        )
                      ],
                    ),
                    margin: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 10.0),
                    padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: new BoxDecoration(
                        border: new BorderDirectional(
                            bottom: new BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))),
                  ),
                ],
              ),
            )));
  }
}
