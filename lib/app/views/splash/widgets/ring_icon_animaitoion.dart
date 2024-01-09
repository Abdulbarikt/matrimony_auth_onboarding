import 'package:flutter/material.dart';



class RingRotationAnimation extends StatelessWidget {
  final AnimationController animaitonController;
  const RingRotationAnimation({super.key, required this.animaitonController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animaitonController,
        builder: (context, child) {
          return Transform.rotate(
            angle: animaitonController.value *
                2.0 *
                3.1416, // Rotates 360 degrees over the duration
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ringIcon.png'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

