import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import '../global_config.dart';
import '../me/me_page.dart';
import '../order/order_page.dart';
import '../park/park_page.dart';

class Index extends StatefulWidget {
  @override
  State<Index> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;

  // 选中的页面，类似于activity？
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.drive_eta),
        title: new Text("停车场"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: new Text("订单"),
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的"),
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }
    _pageList = <StatefulWidget>[new ParkPage(), new OrderPage(), new MePage()];
    _currentPage = _pageList[_selectedIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_selectedIndex].controller.reverse();
            _selectedIndex = index;
            _navigationViews[_selectedIndex].controller.forward();
            _currentPage = _pageList[_selectedIndex];
          });
        });

    return new MaterialApp(
        home: new Scaffold(
          body: new Center(child: _currentPage),
          bottomNavigationBar: bottomNavigationBar,
        ),
        theme: GlobalConfig.themeData);
  }
}
