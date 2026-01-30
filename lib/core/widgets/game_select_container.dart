import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameSelectContainer extends StatelessWidget {
  const GameSelectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.h,
          width: 310.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/map2.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xff7A1FA0), width: 2.w),
          ),
        ),
        Positioned(
          top: 70.h,
          left: 85,
          right: 0,
          child: Text(
            "States and Cities",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
