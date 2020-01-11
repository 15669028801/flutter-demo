import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (i) => "Item $i")
));

class MyApp extends StatelessWidget{

  final List<String> items;
  MyApp({Key key, @required this.items}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('listView Widget'),
        ),
        body:
          GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Text('笑死我了1😆'),
              Text('笑死我了2😆'),
              Text('笑死我了3😆'),
              Text('笑死我了4😆'),
              Text('笑死我了5😆'),
              Text('笑死我了6😆'),
              Text('笑死我了7😆'),
              Text('笑死我了8😆'),
              Text('笑死我了9😆'),
          ],
        ),
      )
    );
  }
}
