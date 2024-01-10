import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mat_dummy/app/utils/app_textstyles.dart';
import 'package:mat_dummy/app/utils/consts.dart';
import 'package:mat_dummy/app/views/onboarding/on_board1.dart';
import 'package:mat_dummy/app/views/splash/widgets/ring_icon_animaitoion.dart';
import 'package:mat_dummy/app/utils/app_textstyles.dart';
import '../../utils/consts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward(); // Loops the animation

    // controller.forward();
    Timer(const Duration(seconds: 3), () {
      // Navigate to the desired screen here
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (ctx) => OnboardingScreen()));
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.38,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Happy',
                              style: AppTextStyles.splashAppNameStyleOne),
                          SizedBox(width: size.width * 0.01),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(2),
                                image: DecorationImage(
                                    image: AssetImage('assets/appIcon.png'))),
                          )
                        ],
                      ),
                      Text('Nikkah',
                          style: AppTextStyles.splashAppNameStyleTwo),
                      SizedBox(height: size.height * 0.001),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose your happiness',
                            style: AppTextStyles.splashAppNameStyleFour,
                          ),
                          Container(
                            color: Colors.black,
                            padding: EdgeInsets.all(1),
                            child: Text(
                              '.com',
                              style: AppTextStyles.splashAppNameStyleThree,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: size.height * 0.05,
              right: 50,
              left: 50,
              child: RingRotationAnimation(
                animaitonController: controller,
              ))
        ],
      ),
    );
  }
}
