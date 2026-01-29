import 'package:card_game_app/core/widgets/app_assets.dart';
import 'package:card_game_app/core/widgets/castom_bottom.dart';
import 'package:card_game_app/core/widgets/custom_text_%20field.dart';
import 'package:card_game_app/core/widgets/divider_with_text.dart';
import 'package:card_game_app/core/widgets/header_logo.dart';
import 'package:card_game_app/core/widgets/social_button.dart';
import 'package:flutter/material.dart';
import 'package:card_game_app/features/widgets/screens/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingnupScreen extends StatelessWidget {
  const SingnupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 360.w),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  HeaderLogo(imageHeight: 270.h, imageWidth: 390.w),

                  SizedBox(height: 4.h),

                  CustomFormField(label: 'Name', hintText: 'Your Name'),
                  SizedBox(height: 17.h),

                  CustomFormField(
                    label: 'Age',
                    hintText: ' 20',
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 14.h),

                  CustomFormField(
                    label: 'Email ID',
                    hintText: 'Kwagdy86@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 18.h),

                  CustomFormField(
                    label: 'Password',
                    hintText: '••••••••••••',
                    isPassword: true,
                  ),

                  SizedBox(height: 20.h),

                  CustomButton(
                    text: 'Sign Up',
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(const SnackBar(content: Text('Sign Up')));
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

                  DividerWithText(text: "Or Sign Up with"),

                  SizedBox(height: 15.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        basePath: AppAssets.googleIcon,

                        onTap: () {},
                      ),
                      SizedBox(width: 73.w),
                      SocialButton(basePath: AppAssets.appleIcon, onTap: () {}),
                    ],
                  ),

                  SizedBox(height: 40.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
