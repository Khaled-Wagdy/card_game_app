import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/features/widgets/screens/achievements.dart';
import 'package:card_game_app/features/widgets/screens/join_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingRoomScreen extends StatelessWidget {
  const WaitingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D9FF),

      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: "Waiting Room"),
            SizedBox(height: 100.h),
            Center(
              child: SizedBox(
                width: 300.w,
                height: 400.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: const Size(300, 300),
                      painter: LinesPainter(),
                    ),

                    Positioned(top: 0, left: 130, child: _buildUser("User 4")),

                    Positioned(left: 0, top: 170, child: _buildUser("User 1")),

                    Positioned(right: 0, top: 170, child: _buildUser("User 2")),

                    Positioned(
                      bottom: 0,
                      left: 135,
                      child: _buildUser("User 3"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff7A1FA0),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: ""),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const JoinScreen()),
            );
          }
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const AchievementsScreen()),
            );
          }
        },
      ),
    );
  }

  Widget _buildUser(String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: Color(0xff7A1FA0),

          backgroundImage: Image.asset("assets/images/girl.png").image,
        ),

        const SizedBox(height: 8),
        Text(name),
      ],
    );
  }
}

class LinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.purple
      ..strokeWidth = 2;

    canvas.drawLine(
      Offset(size.width / 2, 40),
      Offset(size.width / 2, size.height - 40),
      paint,
    );

    canvas.drawLine(
      Offset(40, size.height / 2),
      Offset(size.width - 40, size.height / 2),
      paint,
    );

    final path = Path();
    path.moveTo(size.width / 2, size.height / 2 - 10);
    path.lineTo(size.width / 2 + 10, size.height / 2);
    path.lineTo(size.width / 2, size.height / 2 + 10);
    path.lineTo(size.width / 2 - 10, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
