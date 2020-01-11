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
        body: Center(
          child: Container(
            // height: 200,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: new Text('这是一段文字 ${items[index]}'),
                );
              } ,
            ),
          ),
        ),
      )
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical, // list方向
      children: <Widget>[
        Container(width: 180, height: 200, color: Colors.lightBlue,),
        Container(width: 180, height: 200, color: Colors.redAccent,),
        Container(width: 180, height: 200, color: Colors.greenAccent,),
        Container(width: 180, height: 200, color: Colors.lightGreen,),
      ],
    );
  }
}