import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'chat_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

void main() {
  runApp(MessageBoardApp());
}

class MessageBoardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/settings': (context) => SettingsPage(),
        '/chat': (context) => ChatPage(ModalRoute.of(context)!.settings.arguments as String),
      },
    );
  }
}
