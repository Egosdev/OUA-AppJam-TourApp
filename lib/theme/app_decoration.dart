import 'package:flutter/material.dart';
import 'package:appjam/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.blueGray300,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo4000a => BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigo4000a1 => BoxDecoration(
        color: appTheme.lightGreen50,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoA => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.indigo4000a,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightGreen => BoxDecoration(
        color: appTheme.yellowA400,
        border: Border.all(
          color: appTheme.lightGreen300,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
