import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/extension/navigation_extension.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_text_style.dart';
import 'package:food_app/core/widget/custom_button.dart';
import 'package:food_app/screens/auth/success_auth_view.dart';
import '../../core/component/dots_Stack_Image_component.dart';
import '../../core/widget/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  const DotStackImageComponent(imagePath: AppAssets.loginPng),
                  CustomTextField(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email,
                        color: AppColors.primaryColor, size: 30.sp),
                  ),
                  SizedBox(height: 5.h),
                  CustomTextField(
                    hintText: 'User name',
                    prefixIcon: Icon(Icons.person,
                        color: AppColors.primaryColor, size: 30.sp),
                  ),
                  SizedBox(height: 5.h),
                  CustomTextField(
                    hintText: 'Password',
                    password: true,
                    prefixIcon: Icon(Icons.lock,
                        color: AppColors.primaryColor, size: 30.sp),
                  ),
                  SizedBox(height: 30.h),
                  CustomButton(
                    function: () => context
                        .navigateToAndReplacement(const SuccessAuthView()),
                    title: 'Register',
                    textStyle: CustomStyle.f23400,
                    color: AppColors.offOrange,
                  ),
                ]),
          ),
        )));
  }
}
