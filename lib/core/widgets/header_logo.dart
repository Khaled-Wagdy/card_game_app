import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:card_game_app/core/widgets/app_assets.dart';

class HeaderLogo extends StatelessWidget {
  final double? imageHeight;
  final double? imageWidth;
  final double? fontSize;
  const HeaderLogo({
    super.key,
    this.imageHeight,
    this.imageWidth,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    SizedBox(height: 42);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.lionLogo,
            fit: BoxFit.contain,
            width: 250.w,
            height: 250.h,
          ),

          SizedBox(height: 10.h),

          Text(
            "Mystic Deck",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize ?? 18.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF7A1FA0),
            ),
          ),
        ],
      ),
    );
  }
}
