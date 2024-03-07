import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/widget/custom_assets_image.dart';

class DotsBackgroundImageWidget extends StatelessWidget {
  const DotsBackgroundImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAssetsImage(
        path: AppAssets.dotsSvg,
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight / 2,
        boxFit: BoxFit.cover);
  }
}
