import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:card_game_app/core/widgets/app_assets.dart';

class LeaderboardSection extends StatelessWidget {
  const LeaderboardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          color: const Color(0xFFE9D5EF),
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
        ),
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10.h),
          itemCount: 10, // جرب كذا مستخدم عشان تشوف الـ Scroll
          itemBuilder: (context, index) {
            return Container(
              // تبديل اللون بين الصفوف
              color: index % 2 != 0
                  ? Colors.purple.withOpacity(0.05)
                  : Colors.transparent,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20.r,
                  backgroundImage: AssetImage(AppAssets.personAvatar),
                ),
                title: Text(
                  "User ${index + 1}",
                  style: TextStyle(
                    color: const Color(0xFF7A1FA0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "${1000 - (index * 50)}",
                  style: TextStyle(
                    color: const Color(0xFF7A1FA0),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
