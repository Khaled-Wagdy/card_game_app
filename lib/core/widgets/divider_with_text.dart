import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  const DividerWithText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 315.w,
      child: Column(
        children: [
          const Divider(thickness: 1, color: Color(0xFF7A1FA0)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              text,
              style: TextStyle(
                color: const Color(0xFF7A1FA0),
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
