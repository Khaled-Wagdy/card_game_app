import 'package:card_game_app/features/widgets/screens/exp_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Exp2()),
        );
      },
      child: Container(
        height: 100.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 5, offset: Offset(3, 3)),
          ],

          color: const Color(0xffF2D0FF),
        ),
        child: Container(
          height: 50.h,
          width: 150.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 207, 134, 239),
          ),
          child: Text(
            "PLAY",
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
