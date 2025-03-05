import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/color_codes.dart';

abstract class AppThemeData {
  AppThemeData._();

  /// [darkThemeData] define Dark Theme Configuration
  static ThemeData darkThemeData() {
    return ThemeData.dark().copyWith(
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 64.sp,
          fontWeight: FontWeight.w400,
          color: ColorCodes.blackColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.whiteColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.blackColor,
        ),
        titleLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.blackColor,
        ),
        labelSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.labelSmallTextColor,
        ),
      ),
    );
  }

  /// [lightThemeData] define light Theme Configuration
  static ThemeData lightThemeData() {
    return ThemeData.light().copyWith(
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 64.sp,
          fontWeight: FontWeight.w400,
          color: ColorCodes.blackColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.whiteColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.blackColor,
        ),
        titleLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w700,
          color: ColorCodes.blackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.blackColor,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.blackColor,
        ),
        labelSmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: ColorCodes.labelSmallTextColor,
        ),
      ),
    );
  }
}
