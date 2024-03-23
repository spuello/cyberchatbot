import 'package:cyberchatbot/Features/Chatroom%20/chatroom_screen.dart';
import 'package:flutter/material.dart';

class CyberbotApp extends StatelessWidget {
  const CyberbotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber Chat Bot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ChatroomScreen(),
    );
  }
}
