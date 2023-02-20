import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("to-be-named"),
              accountEmail: Text("unknown"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => Navigator.pushNamed(context, "settings"),
          ),
          ListTile(
            leading: Icon(Icons.route),
            title: Text('Routes'),
            onTap: () => Navigator.pushNamed(context, "settings"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => Navigator.pushNamed(context, "login"),
          ),
        ],
      ),
    );
  }
}
