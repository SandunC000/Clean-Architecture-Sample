import 'package:flutter/material.dart';
import 'package:full/core/util/app_images.dart';

class BgImg extends StatelessWidget {
  final Widget child;

  const BgImg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: const AssetImage(AppImages.bgImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.65), BlendMode.darken)),
      ),
      child: child,
    );
  }
}