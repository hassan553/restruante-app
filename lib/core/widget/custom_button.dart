import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final Function()? function;
  final Color? color;
  final TextStyle? textStyle;
  final double? radius;
  final double? width;
  const CustomButton({
    super.key,
    required this.function,
    required this.title,
    this.color,
    this.textStyle,
    this.radius,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 15),
      child: MaterialButton(
        minWidth: width ?? double.infinity,
        height:  60.h ,
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: function,
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
