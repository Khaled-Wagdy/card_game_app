import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/container_info.dart';
import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            children: [
              CustomAppBar(title: "Explore Themes"),
              ContainerInfo(
                image: "assets/images/Group 167.png",
                title1: "How to Play",
                title2:
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet",
              ),
              Stack(
                children: [
                  ContainerInfo(
                    image: "assets/images/Group 163.png",
                    title1: "Correct answer",
                    title2:
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet",
                  ),
                  Positioned(
                    top: 100.h,
                    left: 30.w,
                    child: Image.asset("assets/images/Group 166.png"),
                  ),
                ],
              ),
              Stack(
                children: [
                  ContainerInfo(
                    image: "assets/images/Group 163.png",
                    title1: "Wrong Answer",
                    title2:
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.Lorem ipsum dolor sit amet",
                  ),
                  Positioned(
                    top: 100.h,
                    left: 30.w,
                    child: Image.asset("assets/images/Group 180.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
