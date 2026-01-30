import 'package:card_game_app/core/widgets/bottom_nav_bar.dart';
import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/navigation_bar.dart';
import 'package:card_game_app/core/widgets/stack_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exp3 extends StatelessWidget {
  const Exp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            children: [
              CustomAppBar(),
              NavBar(),
              StackInfo(title: "states", image: ("assets/images/mask.png")),

              StackInfo(title: "states", image: ("assets/images/mask2.png")),
              StackInfo(title: "states", image: ("assets/images/mask3.png")),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
