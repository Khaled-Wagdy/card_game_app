import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.h,
      decoration: BoxDecoration(color: Color(0xff7A1FA0)),

      child: Row(
        children: [
          SizedBox(width: 20),
          InkWell(
            onTap: () {
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            child: Icon(Icons.undo, color: Colors.white),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          CircleAvatar(
            radius: 25.r,
            backgroundImage: Image.asset("assets/images/girl.png").image,
          ),
          SizedBox(width: 12.w),
          Icon(Icons.menu, color: Colors.white, size: 45.w),
        ],
      ),
    );
  }
}
