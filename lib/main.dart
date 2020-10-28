import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 这是整个应用的主组件
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp 示例',
      routes: {
        '/first': (BuildContext context) => FirstPage(),
        '/second': (BuildContext context) => SecondPage(),
      },
      initialRoute: '/second',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 左侧图标
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print('主页按钮');
            }),
        // 标题
        title: Text('Scaffold 脚手架组件示例'),
        // 操作按钮集
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('搜索按钮');
              }),
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print('添加按钮');
              })
        ],
      ),
      body: Center(
        child: Text('Scaffold'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: '增加',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp 示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '这是主页',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

// 第一个路由页面
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是第一页'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
          child: Text(
            '这是第一页',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

// 第二个路由页面
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是第二个页面'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/first');
          },
          child: Text(
            '第二个页面',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
