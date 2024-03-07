import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/component/dots_Stack_Image_component.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_text_style.dart';
import 'package:food_app/screens/splash/widget/select_auth_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            const DotStackImageComponent(imagePath: AppAssets.logoPng),
            SizedBox(height: 10.h),
            Text('Foodienator', style: CustomStyle.f33800),
            SizedBox(height: 5.h),
            Text('Order your favorite Meals\n                   Here!',
                style: CustomStyle.f14300),
            SizedBox(height: 150.h),
            const SelectAuthWidget(),
          ],
        ),
      ),
    );
  }
}
