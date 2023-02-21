import 'package:erics_app/views/home.dart';
import 'package:erics_app/views/login.dart';
import 'package:erics_app/views/routes.dart';
import 'package:erics_app/views/settings.dart';
import 'package:flutter/material.dart';

const String login = 'login';
const String home = 'home';
const String settings = 'settings';
const String routes = 'routes';

Route<dynamic> controller(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case login:
      return MaterialPageRoute(builder: (context) => const LoginPage(title: "title"));
    case home:
      return MaterialPageRoute(
          builder: (context) => const HomePage(
                title: 'home title',
              ));
    case settings:
      return MaterialPageRoute(builder: (context) => const SettingsPage());
    case routes:
      return MaterialPageRoute(builder: (context) => const RoutesPage());
    default:
      throw ('This route name does not exit');
  }
}
