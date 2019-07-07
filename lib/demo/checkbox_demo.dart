/*
 * @Description: material 复选框小部件
 * @Author: tgb
 * @Date: 2019-07-07 18:31:47
 * @LastEditors: tgb
 * @LastEditTime: 2019-07-07 18:32:05
 */
import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CheckboxDemo'),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CheckboxListTile(
                value: _checkboxItemA,
                onChanged: (value) {
                  setState(() {
                    _checkboxItemA = value;
                  });
                },
                title: Text('Checkbox Item A'),
                subtitle: Text('Description'),
                secondary: Icon(Icons.bookmark),
                selected: _checkboxItemA,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Checkbox(
                  //   value: _checkboxItemA,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _checkboxItemA = value;
                  //     });
                  //   },
                  //   activeColor: Colors.black,
                  // ),
                ],
              ),
            ],
          ),
        ));
  }
}
