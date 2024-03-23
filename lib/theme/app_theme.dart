import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData buildAppThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.k8F86BC),
    useMaterial3: true,
  );
}