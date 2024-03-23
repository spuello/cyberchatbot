import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';

class ChatroomScreen extends StatefulWidget {
  const ChatroomScreen({super.key});

  @override
  State<ChatroomScreen> createState() => _ChatroomScreenState();
}

class _ChatroomScreenState extends State<ChatroomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'CHATROOM SCREEN',
              style: TextStyle(fontSize: 20.fS),
            ),
          ],
        ),
      ),
    );
  }
}
