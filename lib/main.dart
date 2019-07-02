/*
 * @Description: App入口文件
 * @Author: tgb
 * @Date: 2019-06-30 16:47:46
 * @LastEditors: tgb
 * @LastEditTime: 2019-07-02 21:38:55
 */
import 'package:flutter/material.dart';
import './model/post.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      // 主题
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

// 首页
class Home extends StatelessWidget {
  // 生成列表数据
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 导航栏
      appBar: AppBar(
        title: Text('NINGHAO'),
        elevation: 0.0, // 导航栏阴影
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
      // 背景颜色
      backgroundColor: Colors.grey[100],
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          // color: Colors.yellow,
        ),
      ),
    );
  }
}
