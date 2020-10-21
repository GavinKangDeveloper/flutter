import 'package:flutter/material.dart';
import 'dart:convert';
import '../model/weather_model.dart';
import '../service/weather_service.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // 初始化数据模型
  WeatherModel model = WeatherModel();
  @override
  void initState() {
    super.initState();

    getWeatherData();
  }

  void getWeatherData() async {
    var url =
        'https://v.juhe.cn/calendar/day?date=2020-10-21&key=684bff56f68ee2c86363b7f14a70ed79';

    await request(url).then((value) {
      var data = json.decode(value.toString());
      print('万年历今日数据 Json 格式:::' + data.toString());

      setState(() {
        model = WeatherModel.fromJson(data);
      });
    });
  }

  Widget _weatherContent(String date, String suit) {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 20),
      width: 414,
      height: 400,
      color: Colors.green,
      child: Column(
        children: <Widget>[
          _weatherDate(date),
          _weatherSuit(suit),
        ],
      ),
    );
  }

  Widget _weatherDate(String date) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      // width: 414,
      height: 50,
      color: Colors.grey,
      child: Row(
        children: <Widget>[
          Text(
            '日期：${date}',
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _weatherSuit(String suit) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 20),
      color: Colors.yellow,
      child: Text(
        '运势：${suit}',
        style: new TextStyle(color: Colors.black38, fontSize: 18),
        // maxLines: 3,
        // textAlign: TextAlign.left,
        softWrap: true,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _weatherContent(model.result.data.date, model.result.data.suit);
  }
}
