import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => Exp2()),
      //   );
      // },
      child: Container(
        height: 100.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          color: const Color(0xff7A1FA0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Exp2()),
              //   );
              // },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Icon(Icons.home, color: Colors.white, size: 30),
              ),
            ),
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Exp3()),
              //   );
              // },
              child: Icon(Icons.emoji_events, color: Colors.white, size: 30),
            ),
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Exp4()),
              //   );
              // },
              child: Icon(Icons.menu_book, color: Colors.white, size: 30),
            ),
            InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => Exp2()),
              //   );
              // },
              child: Icon(Icons.settings, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
