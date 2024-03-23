import 'package:cyberchatbot/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
        title: 'Cyber Chat Bot',
        onGenerateRoute: _appRouter.generateRoute,
        theme: buildAppThemeData(),
      );
    });
  }
}
