import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_colors.dart';

const String _fontFamily = 'Montserrat';

class CustomStyle {
  static TextStyle f33800 = TextStyle(
    color: AppColors.white,
    fontSize: 33.sp,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w800,
    height: 0,
  );
  static TextStyle f14300 = TextStyle(
    color: AppColors.white,
    fontSize: 14.sp,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w300,
    height: 0,
  );
  static TextStyle f22700 = TextStyle(
    color: Colors.white,
    fontSize: 22.sp,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static TextStyle f23400 = TextStyle(
    color: Colors.white,
    fontSize: 23.sp,
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    height: 0,
  );
}
