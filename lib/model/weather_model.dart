class WeatherModel {
  String reason;
  Result result;
  int errorCode;

  WeatherModel({this.reason, this.result, this.errorCode});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    reason = json['reason'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
    errorCode = json['error_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['reason'] = this.reason;
    if (this.result != null) {
      data['result'] = this.result.toJson();
    }
    data['error_code'] = this.errorCode;
    return data;
  }
}

class Result {
  Data data;

  Result({this.data});

  Result.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String date;
  String animalsYear;
  String avoid;
  String lunar;
  String lunarYear;
  String suit;
  String weekday;
  String yearMonth;

  Data(
      {this.date,
      this.animalsYear,
      this.avoid,
      this.lunar,
      this.lunarYear,
      this.suit,
      this.weekday,
      this.yearMonth});

  Data.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    animalsYear = json['animalsYear'];
    avoid = json['avoid'];
    lunar = json['lunar'];
    lunarYear = json['lunarYear'];
    suit = json['suit'];
    weekday = json['weekday'];
    yearMonth = json['year-month'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['animalsYear'] = this.animalsYear;
    data['avoid'] = this.avoid;
    data['lunar'] = this.lunar;
    data['lunarYear'] = this.lunarYear;
    data['suit'] = this.suit;
    data['weekday'] = this.weekday;
    data['year-month'] = this.yearMonth;
    return data;
  }
}
