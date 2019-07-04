/*
 * @Description: HelloDemo
 * @Author: tgb
 * @Date: 2019-07-02 22:15:03
 * @LastEditors: tgb
 * @LastEditTime: 2019-07-02 22:16:04
 */
import 'package:flutter/material.dart';

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
