import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> boards = [
    {'name': 'General', 'icon': '📝'},
    {'name': 'Sports', 'icon': '⚽'},
    {'name': 'Tech', 'icon': '💻'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Boards'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Message Boards'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: boards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(boards[index]['icon']!),
            title: Text(boards[index]['name']!),
            onTap: () {
              Navigator.pushNamed(context, '/chat', arguments: boards[index]['name']);
            },
          );
        },
      ),
    );
  }
}
