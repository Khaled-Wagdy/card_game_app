import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

// class WaitingRoomScreen extends StatelessWidget {
//   const WaitingRoomScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Column(children: [CustomAppBar()

//       ,])),
//     );
//   }
// }

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            CustomAppBar(),

            // Central diamond
            Positioned(
              top: 200,
              left: 150,
              child: Transform.rotate(
                angle: 0.785398, // 45 degrees in radians
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.deepPurple,
                ),
              ),
            ),

            // User 1 - Left
            Positioned(top: 200, left: 40, child: _buildUserCircle('User 1')),

            // User 2 - Right
            Positioned(top: 200, right: 40, child: _buildUserCircle('User 2')),

            // User 3 - Bottom
            Positioned(
              bottom: 100,
              left: MediaQuery.of(context).size.width / 2 - 40,
              child: _buildUserCircle('User 3'),
            ),

            // User 4 - Top
            Positioned(
              top: 80,
              left: MediaQuery.of(context).size.width / 2 - 40,
              child: _buildUserCircle('User 4'),
            ),

            // Connecting lines
            Positioned.fill(child: CustomPaint(painter: ConnectionPainter())),
          ],
        ),
      ),
    );
  }

  Widget _buildUserCircle(String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.deepPurple,
          child: Icon(Icons.person, color: Colors.white),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

class ConnectionPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.deepPurple
      ..strokeWidth = 2;

    final center = Offset(size.width / 2, 240);

    canvas.drawLine(center, Offset(70, 240), paint); // Left
    canvas.drawLine(center, Offset(size.width - 70, 240), paint); // Right
    canvas.drawLine(
      center,
      Offset(size.width / 2, size.height - 100),
      paint,
    ); // Bottom
    canvas.drawLine(center, Offset(size.width / 2, 110), paint); // Top
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
