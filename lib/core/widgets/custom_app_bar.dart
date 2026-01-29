import 'package:card_game_app/core/widgets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff7A1FA0),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                {
                  Navigator.of(context).pop();
                }
              },
              child: Image.asset(
                AppAssets.arrowBackIcon,
                width: 37.w,
                height: 37.h,
                color: Colors.white,
              ),
            ),
            // Title
            Expanded(
              child: Center(
                child: Text(
                  "Mystic Deck",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // Avatar
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage(AppAssets.personAvatar),
            ),
            SizedBox(width: 13.w),
            GestureDetector(
              child: Image.asset(
                AppAssets.menuIcon,
                width: 36.w,
                height: 36.h,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
