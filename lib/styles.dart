import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';

extension CustomStyles on TextTheme {
  static TextStyle titleRegular(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle btnTextSemiBold(BuildContext context,
      {Color textColor = whiteColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle succesTextSemiBold(BuildContext context,
      {Color textColor = whiteColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 23,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle mediumTextSemiBold(BuildContext context,
      {Color textColor = whiteColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle titleBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 38,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle titleSmallSemiBold(BuildContext context,
      {Color textColor = blackColor}) {
    return TextStyle(
      color: textColor,
      fontSize: 13,
      fontWeight: FontWeight.w700,
    );
  }
}
