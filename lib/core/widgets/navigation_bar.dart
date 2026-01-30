import 'package:card_game_app/features/widgets/screens/exp_2.dart';
import 'package:card_game_app/features/widgets/screens/exp_3.dart';
import 'package:card_game_app/features/widgets/screens/exp_4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.center,
          height: 33.87.h,
          width: 97.98.w,
          decoration: BoxDecoration(
            color: Color(0xff7A1FA0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exp2()),
              );
            },
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Exp3()),
                );
              },
              child: Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.31.sp,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 33.87.h,
          width: 97.98.w,
          decoration: BoxDecoration(
            color: Color(0xff7A1FA0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exp4()),
              );
            },
            child: Text(
              "Geography",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13.31.sp,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 33.87.h,
          width: 97.98.w,
          decoration: BoxDecoration(
            color: Color(0xff7A1FA0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Exp2()),
              );
            },
            child: Text(
              "Since",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 13.31.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
