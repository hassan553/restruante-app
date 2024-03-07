import 'package:flutter/material.dart';
import 'package:food_app/core/utils/app_colors.dart';

ShapeDecoration splashShapeDecoration() {
  return ShapeDecoration(
    color: AppColors.grey,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    shadows: const [
      BoxShadow(
          color: AppColors.shadowColor,
          blurRadius: 1,
          offset: Offset(0, 2),
          spreadRadius: 0)
    ],
  );
}
