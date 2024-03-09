import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/component/dots_Stack_Image_component.dart';
import 'package:food_app/core/extension/navigation_extension.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/screens/home/home_view.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_text_style.dart';
import '../../core/widget/custom_button.dart';

class SuccessAuthView extends StatelessWidget {
  const SuccessAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.all(18.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            const DotStackImageComponent(imagePath: AppAssets.successPng),
            SizedBox(height: 10.h),
            Text('Registration\n Completed',
                style:
                    CustomStyle.f24800.copyWith(color: AppColors.darkOrange)),
            SizedBox(height: 70.h),
            CustomButton(
              function: () => context.navigateToAndReplacement(const HomView()),
              title: 'Continue',
              textStyle: CustomStyle.f23400,
              color: AppColors.offOrange,
            ),
          ],
        ),
      ),
    );
  }
}
