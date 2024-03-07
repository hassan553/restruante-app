import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAssetsImage extends StatelessWidget {
  final String? path;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  const CustomAssetsImage({
    Key? key,
    required this.path,
    this.width,
    this.height,
    this.boxFit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path ?? '',
      width: width,
      height: height,
      fit: boxFit ?? BoxFit.fill,
    );
  }
}
