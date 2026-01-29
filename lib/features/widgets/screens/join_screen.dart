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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,

                      child: Image.asset("assets/images/paper_plane.png"),
                    ),

                    Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("assets/images/paper_plane.png"),
                    ),

                    Container(
                      height: 100,
                      width: 100,

                      child: Image.asset("assets/images/paper_plane.png"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 300.w,
              child: CustomFormField(
                label: "Room code",
                hintText: "Enter the code",
              ),
            ),
            GameSelectButton(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WaitingScreen()),
                );
              },
              title: "Join",
            ),
          ],
        ),
      ),
    );
  }
}
