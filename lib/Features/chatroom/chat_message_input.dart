import 'dart:math' as math;

import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class ChatMessageInput extends StatefulWidget {
  const ChatMessageInput({
    super.key,
  });

  @override
  State<ChatMessageInput> createState() => _ChatMessageInputState();
}

class _ChatMessageInputState extends State<ChatMessageInput> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.dW, vertical: 24.dH),
      color: AppColors.kWhite,
      child: Row(
        children: [
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 150.dH),
              child: Scrollbar(
                controller: _scrollController,
                child: TextField(
                  scrollController: _scrollController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.only(
                          left: 8.dW, right: 16.dW, top: 12.dH, bottom: 12.dH),
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_size_select_actual_rounded,
                        color: AppColors.k8B8991,
                        size: 32.dH,
                      ),
                    ),
                    hintText: "What's in you mind...",
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                        left: 16.dW, right: 24.dW, bottom: 12.dH, top: 12.dH),
                    filled: true,
                    fillColor: AppColors.kEFF2F7,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8.dW),
            child: CircleAvatar(
              radius: 28.dH,
              backgroundColor: AppColors.k8175CB,
              child: IconButton(
                onPressed: () {},
                icon: Transform.rotate(
                  angle: -math.pi / 4.0,
                  child: Icon(
                    Icons.send_rounded,
                    color: AppColors.kWhite,
                    size: 32.dH,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
