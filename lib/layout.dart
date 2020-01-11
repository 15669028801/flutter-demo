import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "welcome to flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("布局基础样式"),
            ),
            // body: Center(
            //   child: Text(
            //     "非常牛逼1111111111111111111111,1111111111111111111111111111111111,厉害了。",
            //     textAlign: TextAlign.start,
            //     maxLines: 2,
            //     overflow: TextOverflow.ellipsis,
            //     style: TextStyle(
            //       fontSize: 25,
            //       color: Color.fromARGB(255, 255, 0, 0),
            //       decoration: TextDecoration.underline, // 下划线
            //       decorationStyle: TextDecorationStyle.dashed // 样式
            //     ),
            //   ),
            // ),
        // body: Center(
        //   child: Container(
        //     child: new Text(
        //       '酱油君',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         fontSize: 30,
        //         textBaseline: TextBaseline.alphabetic,
        //         color: Colors.white,
        //       ),
        //     ),
        //     alignment: Alignment.topCenter, // 对齐方式
        //     width: 600,
        //     height: 300,
        //     // color: Colors.lightBlue,
        //     padding: const EdgeInsets.fromLTRB(10, 80, 30, 30),
        //     margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
        //     decoration: BoxDecoration(
        //         gradient: LinearGradient(colors: [
        //           Colors.lightBlue,
        //           Colors.blue,
        //           Colors.greenAccent
        //         ]),
        //         border: Border.all(
        //             width: 2, color: Colors.red)), // 渐变色， 与color不可重复存在
        //   ),
        // )
        body: Center(
          child: Container(
            child: Image.network(
              'https://crm.maiyawx.cn/api/crm/file/downloadFile/bcf03303-4d85-46ad-9768-ed06946b3b87.jpg',
              fit: BoxFit.cover,
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.darken, // 混合模式
              repeat: ImageRepeat.repeat, // 重复模式
              // fill 填充满, fitHeight垂直充满, fitWidth水平充满, contain居中, cover裁剪
            ),
            width: 200,
            height: 200,
            color: Colors.lightBlue,
          ),
        )
      )
    );
  }
}
