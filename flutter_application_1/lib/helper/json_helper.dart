import 'dart:convert';

import 'package:flutter_application_1/modal/json_modal.dart';
import 'package:http/http.dart' as http;

class JsonHelper {
  static JsonHelper jh = JsonHelper._();
  JsonHelper._();
  String link = "https://translate281.p.rapidapi.com/";

  Future<JsonModal?> translateParsing(String search) async {
    http.Response response = await http.post(Uri.parse(link), body: {
      'text': "$search",
      'from': 'auto',
      'to': 'hi'
    }, headers: {
      "Content-Type": "application/x-www-form-urlencoded",
      "x-rapidapi-host": "translate281.p.rapidapi.com",
      "x-rapidapi-key": "8ee1f1db66mshdf4ea6e2dc742ebp157f13jsn47f574233492"
    });

    if (response.statusCode == 200) {
      var json = response.body;
      var t = jsonDecode(json);
      print(json);
      JsonModal modal = JsonModal.mapToModal(t);

      return modal;
    }
    return null;
  }
}
