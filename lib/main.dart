/*
 * @Description: App入口文件
 * @Author: tgb
 * @Date: 2019-06-30 16:47:46
 * @LastEditors: tgb
 * @LastEditTime: 2019-07-04 21:44:17
 */
import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // 主题
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 主题颜色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

// 首页
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用Tab栏
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // 导航栏
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('Navigration button is pressed.'),
          // ),
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0, // 导航栏阴影
          // 导航底部
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        // 抽屉部件
        drawer: DrawDemo(),
        // 底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
        // 背景颜色
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}
