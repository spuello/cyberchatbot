import 'package:cyberchatbot/common/constants/asset_path.dart';
import 'package:cyberchatbot/common/dart_extensions/build_context_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_colors.dart';
import 'conversation_widget.dart';

class MessageBox extends StatelessWidget {
  final MessageBoxData data;

  const MessageBox({
    super.key,
    required this.data,
  });

  static const borderRadius = 24;

  BorderRadius get rightMessageBorder => BorderRadius.only(
        topLeft: Radius.circular(borderRadius.dW),
        bottomLeft: Radius.circular(borderRadius.dW),
        topRight: Radius.circular(borderRadius.dW),
        bottomRight: Radius.circular(4.dW),
      );

  BorderRadius get leftMessageBorder => BorderRadius.only(
        topLeft: Radius.circular(borderRadius.dW),
        bottomRight: Radius.circular(borderRadius.dW),
        topRight: Radius.circular(borderRadius.dW),
        bottomLeft: Radius.circular(4.dW),
      );

  Color get textColor => data.isTopRight ? AppColors.kWhite : AppColors.k393E43;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: data.alignment,
      child: LayoutBuilder(builder: (context, viewInsets) {
        return ConstrainedBox(
          constraints: BoxConstraints(minWidth: viewInsets.maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Builder(builder: (context) {
                if (data.isTopLeft) {
                  return Container(
                    margin: EdgeInsets.only(right: 4.dW, bottom: 24.dH),
                    height: 36.dH,
                    width: 36.dH,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child:
                        SvgPicture.asset(AssetPath.avatars.missCorrectAvatar),
                  );
                }
                return const SizedBox.shrink();
              }),
              Expanded(
                child: Align(
                  alignment: data.alignment,
                  child: UnconstrainedBox(
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: viewInsets.maxWidth * 0.80),
                      decoration: BoxDecoration(
                        color: data.isTopRight
                            ? AppColors.k8175CB
                            : AppColors.kD7D7DC,
                        borderRadius: data.isTopRight
                            ? rightMessageBorder
                            : leftMessageBorder,
                      ),
                      padding: EdgeInsets.symmetric(vertical:8.dH, horizontal: 16.dW),
                      margin: EdgeInsets.only(bottom: 24.dH),
                      child: Text(
                        data.text,
                        style: context.body2.copyWith(color: textColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
