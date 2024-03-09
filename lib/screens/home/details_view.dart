import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/extension/navigation_extension.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_text_style.dart';
import 'package:food_app/core/widget/custom_button.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => context.pop(),
            child: Icon(Icons.arrow_back_ios_new, size: 25.sp)),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15.sp, top: 15.sp),
        child: Column(
          children: [
            Image.asset(AppAssets.image4Png,
                width: double.infinity, height: 245.h, fit: BoxFit.fill),
            SizedBox(height: 40.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 3.h),
                    Text('Beef Burger', style: CustomStyle.f32700),
                    SizedBox(height: 5.h),
                    Text('About this product', style: CustomStyle.f18500),
                    SizedBox(height: 3.h),
                    Text('Crunchy beef burger with onion and lettuce',
                        style: CustomStyle.f14400),
                  ],
                ),
                Container(
                  height: 58,
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  decoration: ShapeDecoration(
                    color: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.r),
                        topLeft: Radius.circular(20.r),
                      ),
                    ),
                  ),
                  child: Text('3500.00 \$',
                      textAlign: TextAlign.center, style: CustomStyle.f15600),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                Container(
                  width: 59.w,
                  height: 56.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Image.asset(AppAssets.clockPng),
                ),
                SizedBox(width: 10.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Time',
                      style: CustomStyle.f16600,
                    ),
                    SizedBox(height: 3.h),
                    Text('25 minutes', style: CustomStyle.f13400),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.heart_fill,
                      color: AppColors.red, size: 45.h),
                  SizedBox(
                    width: 120,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 104.w,
                          height: 45.h,
                          decoration: ShapeDecoration(
                            color: const Color(0x4FCCCCCC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text('2',
                              textAlign: TextAlign.center,
                              style: CustomStyle.f22600),
                        ),
                        Positioned(
                          left: -5,
                          child: CircleAvatar(
                            radius: 25.r,
                            backgroundColor: AppColors.primaryColor,
                            child: const Icon(CupertinoIcons.minus,
                                color: AppColors.white),
                          ),
                        ),
                        Positioned(
                          right: -5,
                          child: CircleAvatar(
                            radius: 25.r,
                            backgroundColor: AppColors.primaryColor,
                            child:
                                const Icon(Icons.add, color: AppColors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50.h),
            CustomButton(
                function: () {},
                title: 'Add to cart',
                height: 80.h,
                color: AppColors.primaryColor,
                textStyle: CustomStyle.f24800),
          ],
        ),
      ),
    );
  }
}
