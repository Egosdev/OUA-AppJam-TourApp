import 'package:flutter/material.dart';
import 'package:appjam/core/utils/size_utils.dart';
import 'package:appjam/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleSmallBlueA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueA200,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGreen500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.green500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
