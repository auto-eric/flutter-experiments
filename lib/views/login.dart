import 'package:erics_app/route/route.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: loginController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'login',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    print(loginController.text);
                    print(passwordController.text);
                    if( loginController.text == "eric") {
                      Navigator.pushNamed(context, home);
                    }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
