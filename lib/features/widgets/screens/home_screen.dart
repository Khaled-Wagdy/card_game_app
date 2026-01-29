import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 100.h),
            Transform.rotate(
              angle: 0.5,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // center them horizontally
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Expanded(
                        child: Image.asset(
                          "assets/images/paper_plane.png",
                          opacity: const AlwaysStoppedAnimation(.5),
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      child: Expanded(
                        child: Image.asset(
                          "assets/images/paper_plane.png",
                          opacity: const AlwaysStoppedAnimation(.5),
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      child: Expanded(
                        child: Image.asset(
                          "assets/images/paper_plane.png",
                          opacity: const AlwaysStoppedAnimation(.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
