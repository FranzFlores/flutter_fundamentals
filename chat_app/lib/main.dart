import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).theme(),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Chat App'),
          ),
          body: const ChatScreen()),
    );
  }
}
