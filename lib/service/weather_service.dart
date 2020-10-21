import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:async';

Future request(url, {formData}) async {
  try {
    Response response;
    Dio dio = Dio();
    dio.options.contentType = 'application/x-www-form-urlencoded';

    //发起 POST 请求，传入 url 以及表单参数
    response = await dio.post(url, data: formData);
    // 成功返回
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('数据请求失败');
    }
  } catch (e) {
    return print('error-----:::${e}');
  }
}
