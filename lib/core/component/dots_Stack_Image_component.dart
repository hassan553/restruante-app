import 'package:flutter/material.dart';

import '../widget/dots_backgroundImage.dart';

class DotStackImageComponent extends StatelessWidget {
  final String imagePath;
  const DotStackImageComponent({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Align(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const DotsBackgroundImageWidget(),
                  Image.asset(
                   imagePath,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            );
  }
}