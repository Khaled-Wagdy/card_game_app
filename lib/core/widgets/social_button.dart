import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialButton extends StatelessWidget {
  final String basePath;
  final VoidCallback onTap;

  const SocialButton({super.key, required this.basePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Image.asset(
        basePath,
        height: 48.h,
        width: 48.w,
        fit: BoxFit.contain,
      ),
    );
  }
}
