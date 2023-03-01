import 'package:erics_app/application_state.dart';
import 'package:erics_app/route/route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ApplicationState(),
        child: MaterialApp(
          title: 'Erics playground',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          onGenerateRoute: controller,
          initialRoute: login,
        ));
  }
}
