/*
 * @Description: Flutter抽屉组建
 * @Author: tgb
 * @Date: 2019-07-02 23:42:54
 * @LastEditors: tgb
 * @LastEditTime: 2019-07-06 21:46:22
 */
import 'package:flutter/material.dart';

class DrawDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        // DrawerHeader(
        //   child: Text('header'.toUpperCase()),
        //   decoration: BoxDecoration(
        //     color: Colors.grey[100],
        //   ),
        // ),
        UserAccountsDrawerHeader(
          accountName:
              Text('汤国斌', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('1002501259@qq.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562091841089&di=c536c38f80c33e71b24495938ddb8452&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fa1b53495a6b378cdef91427c41e1ce388ac7742b150535-iVIZ6d_fw658'),
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[400],
            image: DecorationImage(
              image: NetworkImage(
                  'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
            ),
          ),
        ),
        ListTile(
          title: Text('Message', textAlign: TextAlign.right),
          trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Favorite', textAlign: TextAlign.right),
          trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          title: Text('Settings', textAlign: TextAlign.right),
          trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ));
  }
}
