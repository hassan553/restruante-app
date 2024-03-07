import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_text_style.dart';
import 'package:food_app/core/widget/custom_button.dart';

import '../../core/component/dots_Stack_Image_component.dart';
import '../../core/widget/custom_text_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  const DotStackImageComponent(imagePath: AppAssets.loginPng),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email,
                        color: AppColors.primaryColor, size: 30.sp),
                  ),
                  SizedBox(height: 10.h),
                  CustomTextField(
                    hintText: 'Password',
                    password: true,
                    prefixIcon: Icon(Icons.lock,
                        color: AppColors.primaryColor, size: 30.sp),
                  ),
                  SizedBox(height: 60.h),
                  CustomButton(
                    function: () {},
                    title: 'Login',
                    textStyle: CustomStyle.f23400,
                    color: AppColors.offOrange,
                  ),
                ]),
          ),
        )));
  }
}
