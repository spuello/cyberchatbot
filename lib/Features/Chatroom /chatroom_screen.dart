import 'package:cyberchatbot/common/dart_extensions/build_context_extension.dart';
import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/constants/asset_path.dart';
import '../../theme/app_colors.dart';

class ChatroomScreen extends StatelessWidget {
  const ChatroomScreen({super.key});

  static const double _toolbarHeight = 75.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kEEEEF3,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_toolbarHeight.dH),
        child: AppBar(
          titleSpacing: 0.0,
          leading: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {},
          ),
          toolbarHeight: _toolbarHeight.dH,
          backgroundColor: AppColors.kWhite,
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8.dW),
                height: 48.dH,
                width: 48.dH,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: SvgPicture.asset(AssetPath.avatars.cartman),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Darrell Steward",
                      style: context.buttonBold,
                    ),
                    Text(
                      "Last seen 15 minutes ago",
                      style: context.caption.copyWith(color: AppColors.kAEABB0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone_rounded,
                size: 25.dW,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_rounded,
                size: 25.dW,
              ),
            ),
          ],
        ),
      ),
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
