import 'package:erics_app/views/nav_rail_example.dart';
import 'package:erics_app/views/navigation.dart';
import 'package:flutter/material.dart';
import 'package:erics_app/route/route.dart' as route;

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: Navigation(),
        body: Row(
          children: [
            Text("home text")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.settings),
          onPressed: () => Navigator.pushNamed(context, route.settings),
        ),
      );
    }
}
