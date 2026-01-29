import 'package:card_game_app/core/widgets/app_assets.dart';
import 'package:card_game_app/core/widgets/castom_bottom.dart';
import 'package:card_game_app/core/widgets/custom_text_%20field.dart';
import 'package:card_game_app/core/widgets/divider_with_text.dart';
import 'package:card_game_app/core/widgets/header_logo.dart';
import 'package:card_game_app/core/widgets/social_button.dart';
import 'package:card_game_app/features/widgets/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),

                  HeaderLogo(),

                  SizedBox(height: 10.h),

                  Text(
                    "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xff7A1FA0),
                      fontSize: 12.sp,
                      height: 1.4,
                    ),
                  ),

                  SizedBox(height: 30.h),

                  CustomFormField(
                    label: "Email ID",
                    hintText: "abc@gmail.com",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 15.h),

                  CustomFormField(
                    label: "Password",
                    hintText: "••••••••••••••••",
                    isPassword: true,
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot your Password?",
                        style: TextStyle(
                          color: Color(0xff7A1FA0),
                          fontSize: 9.sp,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10.h),

                  CustomButton(
                    text: "Log In",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 25.h),

                  DividerWithText(text: "Or Login with"),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        basePath: AppAssets.googleIcon,
                        onTap: () {},
                      ),
                      SizedBox(width: 30.w),
                      SocialButton(basePath: AppAssets.appleIcon, onTap: () {}),
                    ],
                  ),

                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
