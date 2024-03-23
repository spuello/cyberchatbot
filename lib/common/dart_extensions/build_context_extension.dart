import 'package:flutter/material.dart';

import '../../theme/text_styles.dart';

extension BuildContextExtension on BuildContext {
  TextStyle get headline6 => TextStyles.headline6;

  TextStyle get subtitle1 => TextStyles.subtitle1;

  TextStyle get subtitle2 => TextStyles.subtitle2;

  TextStyle get body1 => TextStyles.body1;

  TextStyle get body2 => TextStyles.body2;

  TextStyle get buttonBold => TextStyles.buttonBold;

  TextStyle get button => TextStyles.button;

  TextStyle get caption => TextStyles.caption;
}
