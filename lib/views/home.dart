import 'package:erics_app/views/navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [Icon(Icons.home), Text('Home Page')],
        ),
      ),
      drawer: const Navigation(),
      body: Row(
        children: const [Text("home text")],
      ),
    );
  }
}
