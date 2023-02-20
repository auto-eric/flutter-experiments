import 'package:erics_app/route/route.dart';
import 'package:erics_app/views/nav_rail_example.dart';
import 'package:erics_app/views/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const NavRailExample(),
      onGenerateRoute: controller,
      initialRoute: login,
    );
  }
}

