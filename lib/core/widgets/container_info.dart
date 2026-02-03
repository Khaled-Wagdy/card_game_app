import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerInfo extends StatelessWidget {
  final String title1;
  final String title2;
  final String image;

  const ContainerInfo({
    super.key,
    required this.title1,
    required this.image,
    required this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 310.w,
      decoration: BoxDecoration(
        color: Color(0xffF2D0FF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xff7A1FA0), width: 2.w),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              title1,
              style: TextStyle(
                color: Color(0xff7A1FA0),
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(image),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      title2,
                      style: TextStyle(
                        color: Color(0xff7A1FA0),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
