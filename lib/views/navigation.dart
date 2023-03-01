import 'package:erics_app/application_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Consumer<ApplicationState>(
            builder: (context, state, child){
              return UserAccountsDrawerHeader(
                accountName: Text('login: ${state.login}'),
                accountEmail: Text('email: ${state.email}'),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushNamed(context, "home"),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.pushNamed(context, "settings"),
          ),
          ListTile(
            leading: const Icon(Icons.route),
            title: const Text('Routes'),
            onTap: () => Navigator.pushNamed(context, "routes"),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => Navigator.pushNamed(context, "login"),
          ),
        ],
      ),
    );
  }
}
