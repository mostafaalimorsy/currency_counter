class DataModel {
  String? uId;
  String? title;
  String? dateTime;
  String? phone;
  String? email;
  String? description;
  int? count0;
  int? result0;
  int? count1;
  int? result1;
  int? count2;
  int? result2;
  int? count3;
  int? result3;
  int? count4;
  int? result4;
  int? count5;
  int? result5;
  int? count6;
  int? result6;
  int? count7;
  int? result7;
  int? resultAll;

  DataModel({
    this.title,
    this.uId,
    this.dateTime,
    this.phone,
    this.email,
    this.description,
    this.count0,
    this.result0,
    this.count1,
    this.result1,
    this.count2,
    this.result2,
    this.count3,
    this.result3,
    this.count4,
    this.result4,
    this.count5,
    this.result5,
    this.count6,
    this.result6,
    this.count7,
    this.result7,
    this.resultAll,
  });

  DataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    uId = json['uId'];
    dateTime = json['dateTime'];
    email = json['email'];
    description = json['description'];
    count0=json[count0];
    result0=json[result0];
    count1=json[count1];
    result1=json[result1];
    count2=json[count2];
    result2=json[result2];
    count3=json[count3];
    result3=json[result3];
    count4=json[count4];
    result4=json[result4];
    count5=json[count5];
    result5=json[result5];
    count6=json[count6];
    result7=json[result7];
    resultAll=json[resultAll];

  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'uId': uId,
      'dateTime': dateTime,
      'phone': phone,
      'email': email,
      'description': description,
      'count0':count0,
      'result0':result0,
      'count1':count1,
      'result1':result1,
      'count2':count2,
      'result2':result2,
      'count3':count3,
      'result3':result3,
      'count4':count4,
      'result4':result4,
      'count5':count5,
      'result5':result5,
      'count6':count6,
      'result6':result6,
      'count7':count7,
      'result7':result7,
      'resultAll':resultAll
    };
  }
}
