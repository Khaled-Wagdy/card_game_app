import 'package:card_game_app/features/widgets/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardGame extends StatelessWidget {
  const CardGame({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Color(0xffF2D0FF)),
        debugShowCheckedModeBanner: false,
        title: 'Mystic Deck',

        home: LandingScreen(),
      ),
    );
  }
}
