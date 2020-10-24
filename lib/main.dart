// import 'dart:html';
import 'package:flutter/material.dart';
import 'pages/weather_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例'),
        ),
        body: KKTest(),
      ),
    );
  }
}

class KKTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // 添加装饰效果
      decoration: BoxDecoration(
        color: Colors.red,
        border: new Border.all(
          color: Colors.green,
          width: 8.0, //边框粗细
        ),
        borderRadius: const BorderRadius.all(const Radius.circular(8.0)), //边框弧度
      ),
      child: Text(
        'Flutter',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
