import 'package:flutter/material.dart';

import 'navigation.dart';

const title = 'Routes';

class RoutesPage extends StatelessWidget {
  const RoutesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [Icon(Icons.route), Text(title)],
        ),
      ),
      drawer: const Navigation(),
      body: Row(
        children: const [Text("settings text")],
      ),
    );
  }
}
