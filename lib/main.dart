import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        brightness: Brightness.dark,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: CustomCard(num: 1, onPress: () {print(11111);},),
      ),
    );
  }
}

var textStyle = TextStyle(fontSize: 26, color: Colors.cyan, fontWeight: FontWeight.w600);

class CustomCard extends StatelessWidget {
  CustomCard({@required this.onPress, @required this.num});

  final Function onPress;
  final num;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text("Card $num"),
          FlatButton(child: Icon(Icons.lightbulb_outline, size: 48,), onPressed: this.onPress, ),
          Padding(padding: EdgeInsets.all(20),),
          
          Checkbox(value: true, onChanged: (val) {
            print("val:" + (val ? "1" : "0"));
          },),
          MyButton(),
          MyCounter(),
        ],
      ),
    );
  }
}


class MyCounter extends StatefulWidget {
  @override
  _CounterState createSatte() => new _CounterState();
}

class _CounterState extends State<MyCounter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: <Widget>[
      new RaisedButton(
        onPressed: _increment,
        child: new Text("加一"),
      ),
      new Text('总数： $_counter')
    ],);
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("点击事件");
      },
      child: new Container(
        height: 110,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
          backgroundBlendMode: BlendMode.dst,
        ),
        child: new Center(
          child: new Text("点击框"),
        ),
      ),
    );
  }
}