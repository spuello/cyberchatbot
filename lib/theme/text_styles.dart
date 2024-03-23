import 'package:cyberchatbot/common/dart_extensions/sizer_extension.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class TextStyles {
  static const String fontFamily = 'Montserrat';
  static const TextStyle _base = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.kBlack,
    leadingDistribution: TextLeadingDistribution.even,
  );


  static TextStyle get headline6 {
    final font = 20.fS;
    const fontWeight = FontWeight.w700;
    final lineHeight = 32.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get subtitle1 {
    final font = 20.fS;
    const fontWeight = FontWeight.w700;
    final lineHeight = 26.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get subtitle2 {
    final font = 17.fS;
    const fontWeight = FontWeight.w700;
    final lineHeight = 21.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get body1 {
    final font = 16.fS;
    const fontWeight = FontWeight.w400;
    final lineHeight = 21.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get body2 {
    final font = 14.fS;
    const fontWeight = FontWeight.w500;
    final lineHeight = 21.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get button {
    final font = 14.fS;
    const fontWeight = FontWeight.w500;
    final lineHeight = 21.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: lineHeight / font,
    );
  }

  static TextStyle get buttonBold {
    final font = 16.fS;
    const fontWeight = FontWeight.w700;
    final lineHeight = 26.fS;
    final letterSpacing = 0.15.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      height: lineHeight / font,
      letterSpacing: letterSpacing,
    );
  }

  static TextStyle get caption {
    final font = 12.fS;
    const fontWeight = FontWeight.w500;
    final lineHeight = 18.fS;
    final letterSpacing = 0.4.fS;

    return _base.copyWith(
      fontSize: font,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: lineHeight / font,
    );
  }


}
