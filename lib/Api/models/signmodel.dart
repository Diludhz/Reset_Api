// To parse this JSON data, do
//
//     final modelPage = modelPageFromJson(jsonString);

import 'dart:convert';

ModelPage modelPageFromJson(String str) => ModelPage.fromJson(json.decode(str));

String modelPageToJson(ModelPage data) => json.encode(data.toJson());

class ModelPage {
  String? message;

  ModelPage({
    this.message,
  });

  factory ModelPage.fromJson(Map<String, dynamic> json) => ModelPage(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
