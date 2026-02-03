import 'package:card_game_app/core/widgets/app_assets.dart';
import 'package:card_game_app/features/widgets/screens/login_screen.dart';
import 'package:card_game_app/features/widgets/screens/singnup_screen.dart';
import 'package:flutter/material.dart';
import 'package:card_game_app/core/widgets/castom_bottom.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:card_game_app/core/widgets/bottom_flowers_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const BottomFlowersWidget(),

            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 30.h),
                    Image.asset(
                      AppAssets.lionLogo,
                      height: 270.h,
                      width: 393.5.w,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Mystic Deck",
                      style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF7A1FA0),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        height: 1.6.h,
                        color: const Color(0xFF7A1FA0),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    CustomButton(
                      text: "Login into existing account",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      isOutlined: false,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Or",
                      style: TextStyle(
                        color: const Color(0xff8E8E8E),
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      text: "Don't have an account? Sign up",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingnupScreen(),
                          ),
                        );
                      },
                      isOutlined: true,
                    ),

                    SizedBox(height: 130.h),
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
