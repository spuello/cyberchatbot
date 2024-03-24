import 'dart:math';

import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'message_box.dart';

class ConversationWidget extends StatelessWidget {
  const ConversationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.dW,
        right: 24.dW,
      ),
      child: ListView.builder(
        reverse: true,
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return MessageBox(data: messages[index]);
        },
      ),
    );
  }
}

final random = Random();
final messages = List.generate(10, (index) {
  int words = 0;
  if (index.isEven) {
    words = random.nextInt(4) + 1;
  } else {
    words = random.nextInt(28) + 3;
  }

  return MessageBoxData(
      text: loremIpsum(words: words),
      alignment: words.isOdd ? Alignment.topRight : Alignment.topLeft);
}).toList();

class MessageBoxData {
  final String text;
  final Alignment alignment;

  bool get isTopLeft => alignment == Alignment.topLeft;

  bool get isTopRight => alignment == Alignment.topRight;

  const MessageBoxData({required this.text, required this.alignment});
}
