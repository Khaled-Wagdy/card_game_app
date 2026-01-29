import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/game_select_button.dart';
import 'package:card_game_app/features/widgets/screens/join_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 100.h),

                Transform.rotate(
                  angle: 0.5,
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,

                          child: Image.asset(
                            "assets/images/paper_plane.png",
                            opacity: const AlwaysStoppedAnimation(.5),
                          ),
                        ),

                        Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            "assets/images/paper_plane.png",
                            opacity: const AlwaysStoppedAnimation(.5),
                          ),
                        ),

                        Container(
                          height: 100,
                          width: 100,

                          child: Image.asset(
                            "assets/images/paper_plane.png",
                            opacity: const AlwaysStoppedAnimation(.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150.h,
              left: 20,
              child: GameSelectButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JoinScreen()),
                  );
                },
                title: "join room",
              ),
            ),
            Positioned(
              top: 230.h,
              left: 20,
              child: GameSelectButton(onTap: () {}, title: "secend game"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
