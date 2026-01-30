import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/game_select_button.dart';
import 'package:card_game_app/core/widgets/user_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),

            GameSelectButton(onTap: () {}, title: ""),

            // Stack(
            //   children: [
            //     Positioned(
            //       top: 20,
            //       left: 20,
            //       child: UserCircle(label: 'User 1'),
            //     ),
            //     Positioned(
            //       top: 20,
            //       right: 20,
            //       child: UserCircle(label: 'User 1'),
            //     ),
            //     Positioned(
            //       bottom: 20,
            //       left: 20,
            //       child: UserCircle(label: 'User 1'),
            //     ),
            //     Positioned(
            //       bottom: 20,
            //       left: 20,
            //       child: UserCircle(label: 'User 1'),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  // class ConnectionPainter extends CustomPainter {
  //   @override
  //   void paint(Canvas canvas, Size size) {
  //     final paint = Paint()
  //       ..color = Colors.deepPurple
  //       ..strokeWidth = 2;

  //     final center = Offset(size.width / 2, 240);

  //     canvas.drawLine(center, Offset(70, 240), paint); // Left
  //     canvas.drawLine(center, Offset(size.width - 70, 240), paint); // Right
  //     canvas.drawLine(
  //       center,
  //       Offset(size.width / 2, size.height - 100),
  //       paint,
  //     ); // Bottom
  //     canvas.drawLine(center, Offset(size.width / 2, 110), paint); // Top
  //   }

  //   @override
  //   bool shouldRepaint(CustomPainter oldDelegate) => false;
}
