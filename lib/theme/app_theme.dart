import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData buildAppThemeData() {
  return ThemeData(
    fontFamily: "Montserrat",
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.k8175CB),
    useMaterial3: true,
  );
}
