import 'package:card_game_app/core/widgets/bottom_flowers_widget.dart';
import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/custom_text_%20field.dart';
import 'package:card_game_app/core/widgets/game_select_button.dart';
import 'package:card_game_app/features/widgets/screens/waiting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الورد في الخلفية تحت
          const BottomFlowersWidget(),

          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          // الـ AppBar هنا بره الـ Padding عشان ياخد العرض كله
                          const CustomAppBar(),

                          // باقي المحتوى جوه Padding عشان المسافات الجانبية
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.w),
                            child: Column(
                              children: [
                                SizedBox(height: 60.h),
                                Transform.rotate(
                                  angle: 0.5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 80.h,
                                        width: 80.w,
                                        child: Image.asset(
                                          "assets/images/paper_plane.png",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 150.h,
                                        width: 150.w,
                                        child: Image.asset(
                                          "assets/images/paper_plane.png",
                                        ),
                                      ),
                                      SizedBox(
                                        height: 80.h,
                                        width: 80.w,
                                        child: Image.asset(
                                          "assets/images/paper_plane.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                SizedBox(height: 40.h),

                                const CustomFormField(
                                  label: "Room code",
                                  hintText: "Enter the code",
                                ),

                                SizedBox(height: 30.h),

                                GameSelectButton(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const WaitingScreen(),
                                      ),
                                    );
                                  },
                                  title: "Join",
                                ),
                              ],
                            ),
                          ),

                          // الـ Spacer بيزق كل اللي فوق لأعلى الشاشة
                          const Spacer(),
                          SizedBox(height: 120.h),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
