import 'dart:ffi';

import 'package:flutter/material.dart';

class ApplicationState extends ChangeNotifier {
  String login = "";
  bool isLogedIn = false;
  String email = "default@here.de";

  void setLogin(String login) {
    this.login = login;
    notifyListeners();
  }
}
