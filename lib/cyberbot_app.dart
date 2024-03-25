import 'package:cyberchatbot/Features/splash/splash_screen.dart';
import 'package:cyberchatbot/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Features/conversation/conversation_screen.dart';
import 'app_router.dart';

class CyberbotApp extends StatelessWidget {
  const CyberbotApp({super.key});

  static const _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (
      BuildContext context,
      Orientation orientation,
      DeviceType deviceType,
    ) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cyber Chat Bot',
        onGenerateRoute: _appRouter.generateRoute,
        theme: buildAppThemeData(),
        initialRoute: SplashScreen.routeName,
      );
    });
  }
}
