import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: const Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('D a s h b o a r d'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('M e s s a g e'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('S e t t i n g s'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('L o g o u t'),
          ),
        ],
      ),
    );
  }
}
