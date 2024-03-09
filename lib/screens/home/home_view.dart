import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/extension/navigation_extension.dart';
import 'package:food_app/core/utils/app_assets.dart';
import 'package:food_app/core/utils/app_colors.dart';
import 'package:food_app/core/utils/app_text_style.dart';
import 'package:food_app/core/widget/custom_text_field.dart';
import 'package:food_app/screens/home/details_view.dart';

class HomView extends StatefulWidget {
  const HomView({super.key});

  @override
  State<HomView> createState() => _HomViewState();
}

class _HomViewState extends State<HomView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Image.asset(AppAssets.listPng),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(AppAssets.cartPng),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: ScreenUtil().screenHeight - 380.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AppColors.grey.withOpacity(.9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h),
            child: Column(children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: CustomTextField(
                  fillColor: AppColors.grey.withOpacity(.5),
                  suffixIcon:
                      const Icon(CupertinoIcons.search, color: AppColors.white),
                  hintText: 'search....',
                  hintStyle: CustomStyle.f15500,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: SizedBox(
                    height: 50.h,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => setState(() {
                              currentIndex = index;
                            }),
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 40.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                color: currentIndex != index
                                    ? AppColors.primaryColor
                                    : AppColors.grey.withOpacity(.5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child:
                                      Text('All', style: CustomStyle.f15500)),
                            ),
                          );
                        })),
              ),
              SizedBox(height: 70.h),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () =>
                            context.navigateToPage(const DetailsView()),
                        child: Container(
                          margin: EdgeInsets.only(
                              right: 40.w, left: 40.w, bottom: 10.h),
                          padding: EdgeInsets.all(15.sp),
                          height: 180.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(CupertinoIcons.heart_fill,
                                    color: AppColors.red, size: 30.sp),
                              ),
                              SizedBox(height: 3.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Grilled Beef',
                                            style: CustomStyle.f16600),
                                        SizedBox(height: 8.h),
                                        Text(
                                            'Spicy grilled beef with special seasoning',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: CustomStyle.f15500.copyWith(
                                              color: const Color(0xFF888888),
                                            )),
                                        SizedBox(height: 15.h),
                                        Text(
                                          '4000.00 \$',
                                          style: CustomStyle.f15600.copyWith(
                                              color: AppColors.primaryColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(AppAssets.image4Png,
                                        width: 120.w,
                                        height: 80.h,
                                        fit: BoxFit.fill),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
