import 'package:erics_app/views/home.dart';
import 'package:erics_app/views/login.dart';
import 'package:erics_app/views/settings.dart';
import 'package:flutter/material.dart';

const String login = 'login';
const String home = 'home';
const String settings = 'settings';

Route<dynamic> controller(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case login:
      return MaterialPageRoute(builder: (context) => LoginPage(title: "title"));
    case home:
      return MaterialPageRoute(
          builder: (context) => HomePage(
                title: 'home title',
              ));
    case settings:
      return MaterialPageRoute(builder: (context) => SettingsPage());
    default:
      throw ('This route name does not exit');
  }
}
