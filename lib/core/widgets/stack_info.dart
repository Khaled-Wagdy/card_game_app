import 'package:card_game_app/features/widgets/screens/game_select.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackInfo extends StatelessWidget {
  final String title;
  final String image;

  const StackInfo({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameSelect()),
            );
          },
          child: Container(
            height: 150.h,
            width: 310.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color(0xff7A1FA0), width: 2.w),
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          left: 10.w,
          child: Container(
            height: 50.h,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: Colors.white, width: 2.w),
            ),

            child: Icon(Icons.play_arrow, color: Colors.white, size: 40),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 10.w,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18.13.sp,
            ),
          ),
        ),
      ],
    );
  }
}
