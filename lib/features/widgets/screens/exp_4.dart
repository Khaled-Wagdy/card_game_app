import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/navigation_bar.dart';
import 'package:card_game_app/core/widgets/stack_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exp4 extends StatelessWidget {
  const Exp4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            children: [
              CustomAppBar(title: "Explore Themes"),
              NavBar(),
              StackInfo(title: "states", image: ("assets/images/map.jpg")),
              StackInfo(title: "states", image: ("assets/images/river.png")),
              StackInfo(
                title: "states",
                image: ("assets/images/agricaliture.png"),
              ),
              StackInfo(title: "states", image: ("assets/images/police.png")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
