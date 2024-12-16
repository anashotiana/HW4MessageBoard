import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String boardName;

  ChatPage(this.boardName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(boardName),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Sample Message 1'),
                  subtitle: Text('User1'),
                ),
                ListTile(
                  title: Text('Sample Message 2'),
                  subtitle: Text('User2'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Enter a message...'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Firebase send message logic will be added here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
