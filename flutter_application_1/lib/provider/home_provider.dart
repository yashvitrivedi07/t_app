import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/json_helper.dart';
import 'package:flutter_application_1/modal/json_modal.dart';

class HomeProvider with ChangeNotifier {
  JsonModal? modal;

  void getTranslatedWord(String text) async {
    modal = await JsonHelper.jh.translateParsing(text);

    print(modal?.response);
    notifyListeners();
  }
}
