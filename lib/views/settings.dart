import 'package:flutter/material.dart';

import 'navigation.dart';

const title = 'Settings';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [Icon(Icons.settings), Text(title)],
        ),
      ),
      drawer: const Navigation(),
      body: Row(
        children: const [Text("settings text")],
      ),
    );
  }
}
