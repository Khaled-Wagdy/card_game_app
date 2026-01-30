import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/game_select_button.dart';
import 'package:card_game_app/core/widgets/leaderboard_section.dart';
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
                const CustomAppBar(),
                SizedBox(height: 20.h),
                Text(
                  "Welcome User!",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF7A1FA0),
                  ),
                ),
                SizedBox(height: 60.h),

                Transform.rotate(
                  angle: 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPlane(100, 100),
                      _buildPlane(180, 180),
                      _buildPlane(100, 100),
                    ],
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
                    MaterialPageRoute(builder: (context) => const JoinScreen()),
                  );
                },
                title: "join room",
              ),
            ),
            Positioned(
              top: 230.h,
              left: 20,
              child: GameSelectButton(onTap: () {}, title: "second game"),
            ),

            Positioned(
              top: 330.h,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatCard("assets/icons/icons_points.png", "Points"),
                    _buildStatCard(
                      'assets/icons/icons_duration.png',
                      "Duration",
                    ),
                    _buildStatCard("assets/icons/icons_stat.png", "Stats"),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 420.h,
              left: 0,
              right: 0,
              bottom: 0,
              child: const LeaderboardSection(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildPlane(double h, double w) {
    return SizedBox(
      height: h.h,
      width: w.w,
      child: Image.asset(
        "assets/images/paper_plane.png",
        opacity: const AlwaysStoppedAnimation(.3),
      ),
    );
  }

  Widget _buildStatCard(String imagePath, String label) {
    return Container(
      width: 95.w,
      height: 75.h,
      decoration: BoxDecoration(
        color: const Color(0xFF7A1FA0),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, width: 30.w, height: 30.h),
          SizedBox(height: 4.h),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
