import 'package:card_game_app/core/widgets/custom_app_bar.dart';
import 'package:card_game_app/core/widgets/game_select_button.dart';
import 'package:card_game_app/core/widgets/game_select_container.dart';
import 'package:card_game_app/core/widgets/play_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameSelect extends StatelessWidget {
  const GameSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20.h,
            children: [
              CustomAppBar(title: "Explore Themes"),
              GameSelectContainer(),
              GameSelectButton(onTap: () {}, title: "hala"),
              GameSelectButton(onTap: () {}, title: "hala"),
              GameSelectButton(onTap: () {}, title: "hala"),
              GameSelectButton(onTap: () {}, title: "hala"),
              GameSelectButton(onTap: () {}, title: "hala"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: PlayButton(),
    );
  }
}
