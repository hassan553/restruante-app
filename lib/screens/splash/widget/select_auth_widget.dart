import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/extension/navigation_extension.dart';
import 'package:food_app/screens/auth/register_view.dart';
import 'package:food_app/screens/splash/widget/splash_shapeDecoration.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../auth/login_view.dart';

class SelectAuthWidget extends StatelessWidget {
  const SelectAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 359.w,
      height: 65.h,
      decoration: splashShapeDecoration(),
      child: Row(children: [
        Expanded(
            child: InkWell(
          onTap: () => context.navigateToAndReplacement(const RegisterView()),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: AppColors.darkCyan,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            child: Text('Register', style: CustomStyle.f22700),
          ),
        )),
        Expanded(
            child: InkWell(
          onTap: () => context.navigateToAndReplacement(const LoginView()),
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
            child: Text('Login', style: CustomStyle.f22700),
          ),
        )),
      ]),
    );
  }
}
