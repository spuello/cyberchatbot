import 'package:sizer/sizer.dart';

extension ResponsiveCalculation on num {
  static const double _designHeight = 812;
  static const double _designWidth = 375;

  ///
  ///Returns the percent [Height] based on the design height reference
  ///
  double get dH => (this / _designHeight) * 100.h;

  ///
  ///Returns the percent [Width] based on the design width reference
  ///
  double get dW => (this / _designWidth) * 100.w;

  ///
  ///Returns the percent [Font Size] based on the design width reference
  ///
  double get fS => dW;

  double get imageHeight => dH * 1.05;
}
