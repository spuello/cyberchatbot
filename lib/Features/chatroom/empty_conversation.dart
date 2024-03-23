
import 'package:cyberchatbot/common/dart_extensions/build_context_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../common/constants/asset_path.dart';
import '../../theme/app_colors.dart';

class EmptyConversation extends StatelessWidget {
  const EmptyConversation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "No messages here yet...",
          style: context.subtitle2,
        ),
        Container(
          margin: EdgeInsets.only(top: 16.dH, bottom: 16.dH),
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            "Send a message or on the greeting below",
            style: context.body1Medium.copyWith(color: AppColors.k8B8991),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 8.dW),
          height: 75.w,
          width: 75.w,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: SvgPicture.asset(AssetPath.illustration.emptyChatIllustration),
        ),
      ],
    );
  }
}