import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? imagePath;
  final double? width;
  final double? height;
  final BoxFit? boxFit;
  const CustomNetworkImage({
    super.key,
    this.imagePath,
    this.width,
    this.height,
    this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imagePath ?? '',
      fit: boxFit,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
            color: AppColors.primaryColor,
          ),
        );
      },
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Icon(Icons.error);
      },
    );
  }
}
