import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '布局综合示例',
      theme: ThemeData(
        // 应用程序整体主题的亮度
        brightness: Brightness.light,
        // App 主要部分的背景色
        primaryColor: Colors.orange,
        // 前景色（文本、按钮等）
        accentColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '武当山风景区',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'lib/Images/wudang.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            AddressView(),
            TabButton(),
            Content(),
          ],
        ),
      ),
    );
  }
}

class AddressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 此部分四周间隔一定距离
      padding: EdgeInsets.all(32),
      // color: Colors.green,
      child: Row(
        children: [
          Expanded(
            child: Column(
              // 次轴即水平方向左侧对齐
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    '风景区地址',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '广州市逗你村老饽饽号',
                  style: TextStyle(
                    color: Colors.red[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('66'),
        ],
      ),
    );
  }
}

// 三个按钮
class TabButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        // 水平方向均匀排列每个元素
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          creatButton(Icons.call, '电话'),
          creatButton(Icons.near_me, '导航'),
          creatButton(Icons.share, '分享'),
        ],
      ),
    );
  }

  Column creatButton(IconData img, String content) {
    // 垂直布局
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          img,
          color: Colors.lightGreen,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            content,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.lightGreen,
            ),
          ),
        )
      ],
    );
  }
}

// 风景区介绍文本部分
class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Text('''武当山，中国道教圣地，又名太和山、谢罗山、参上山、仙室山，古有“太岳”、"玄岳”、“大岳"之称。
        位于湖北西北部十堰市丹江口市境内。东接闻名古城襄阳市，西靠车城十堰市，南望原始森林神农架，北临高峡平湖丹江口水库。
        明代，武当山被皇帝封为“大岳”、“治世玄岳”，被尊为“皇室家庙”。武当山以
        “四大名山皆拱揖，五方仙岳共朝宗”的“五岳之冠”地位闻名于世。
        1994年12月，武当山古建筑群入选《世界遗产名录》，2006年被整体列为“全国
        重点文物保护单位”。2007年，武当山和长城、丽江、周庄等景区一起入选"欧洲人最喜爱的中国
        十大景区”。2010至2013年，武当山分别被评为国家5A级旅游区、国家森林公园、中国十大避暑
        名山、海峡两岸交流基地，入选"中国最美地质公园”。
        截至2013年，武当山有古建筑53处，建筑面积2. 7万平方米，建筑遗址9处，占
        地面积20多万平方米，全山保存各类文物5035件。
        武当山是道教名山和武当武术的发源地，被称为“亘古无双胜境，天下第一仙
        山”。武当武术，是中华武术的重要流派。元末明初，道士张三丰集其大成，开创武当派。'''),
    );
  }
}

class KKLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = Container(
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: Colors.blueGrey,
                  ),
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0)),
                ),
                margin: const EdgeInsets.all(4.0),
                child: Image.asset('lib/Images/1.jpeg'),
              ))
            ],
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Container 容器布局示例'),
      ),
      body: container,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
