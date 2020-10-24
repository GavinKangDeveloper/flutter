import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KKList(),
    );
  }
}

// 列表
class KKList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '基础列表示例';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('alarm'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.airplay),
              title: Text('airplay'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text('phone'),
            ),
          ],
        ),
      ),
    );
  }
}

//  按钮 图标
class KKImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('图标组件示例'),
        ),
        body: Column(
          children: [
            Icon(
              Icons.phone,
              color: Colors.green[300],
              size: 80,
            ),
            IconButton(
                icon: Icon(
                  Icons.volume_up,
                  size: 48,
                ),
                tooltip: '按下操作',
                onPressed: () {
                  print('按下操作 666');
                }),
            RaisedButton(
              onPressed: () {
                print('打印 RaisedButton Button 按钮 ');
              },
              child: Text('RaisedButton Button 按钮'),
            )
          ],
        ));
  }
}

// 文本 布局
class KKUITest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      // 垂直布局
      body: Column(
        children: <Widget>[
          Text(
            '红色字体 + 黑色下滑线 + 18 号 + 斜体 + 粗体',
            style: TextStyle(
              // 颜色
              color: Colors.red,
              // 字体
              fontSize: 18,
              // 字体样式：斜体
              fontStyle: FontStyle.italic,
              // 字体粗细
              fontWeight: FontWeight.bold,
              // 文本装饰器（删除线）
              decoration: TextDecoration.lineThrough,
              // 文本装饰器颜色（删除线颜色）
              decorationColor: Colors.black,
              // 文字间距;非行间距
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '橙色 + 下划线 + 24号',
            style: TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.lineThrough,
              fontSize: 24,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            '23号 + 斜体 + 加粗 + 字间距6',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 6,
            ),
          ),
        ],
      ),
    );
  }
}
