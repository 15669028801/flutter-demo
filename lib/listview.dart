import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('listView Widget'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text('这是一个列表'),
            ),
            new Image.network(
              'https://crm.maiyawx.cn/api/crm/file/downloadFile/bcf03303-4d85-46ad-9768-ed06946b3b87.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            )
          ],
        ),
      )
    );
  }
}