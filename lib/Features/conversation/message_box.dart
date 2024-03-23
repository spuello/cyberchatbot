import 'package:cyberchatbot/common/dart_extensions/build_context_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../theme/app_colors.dart';
import 'conversation_widget.dart';

class MessageBox extends StatelessWidget {
  final MessageBoxData data;

  const MessageBox({
    super.key,
    required this.data,
  });

  BorderRadius get rightMessageBorder => BorderRadius.only(
        topLeft: Radius.circular(30.dW),
        bottomLeft: Radius.circular(30.dW),
        topRight: Radius.circular(30.dW),
        bottomRight: Radius.circular(4.dW),
      );

  BorderRadius get leftMessageBorder => BorderRadius.only(
        topLeft: Radius.circular(30.dW),
        bottomRight: Radius.circular(30.dW),
        topRight: Radius.circular(30.dW),
        bottomLeft: Radius.circular(4.dW),
      );

  Color get textColor => data.isTopRight ? AppColors.kWhite : AppColors.k1B1B1B;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: data.alignment,
      child: UnconstrainedBox(
        child: Container(
          constraints: BoxConstraints(maxWidth: 75.w),
          decoration: BoxDecoration(
            color: data.isTopRight ? AppColors.k8175CB : AppColors.kD7D7DC,
            borderRadius:
                data.isTopRight ? rightMessageBorder : leftMessageBorder,
          ),
          padding: EdgeInsets.all(16.dH),
          margin: EdgeInsets.only(bottom: 24.dH),
          child: Text(
            data.text,
            style: context.body2.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
