import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/core/utils/app_theme.dart';
import 'package:food_app/screens/auth/login_view.dart';
import 'package:food_app/screens/auth/success_auth_view.dart';
import 'package:food_app/screens/home/details_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Food App',
            theme: AppTheme.light(),
            home: const LoginView(),
          );
        });
  }
}
