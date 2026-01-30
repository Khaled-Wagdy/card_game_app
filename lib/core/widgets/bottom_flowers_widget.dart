import 'package:card_game_app/core/widgets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomFlowersWidget extends StatelessWidget {
  const BottomFlowersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10.h,
      left: 0,
      right: 0,
      child: SizedBox(
        height: 140.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -70.w,
              bottom: -10.h,
              child: Image.asset(
                AppAssets.flowers,
                width: 250.w,
                height: 200.h,
                fit: BoxFit.contain,
              ),
            ),

            Positioned(
              right: -50.w,
              bottom: -10.h,
              child: Image.asset(
                AppAssets.flowersbig,
                width: 200.w,
                height: 200.h,
                fit: BoxFit.contain,
              ),
            ),

            Image.asset(
              AppAssets.flowersSmall,
              width: 300.w,
              height: 120.h,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
