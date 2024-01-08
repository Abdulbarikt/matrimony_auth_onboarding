import 'package:flutter/material.dart';
import 'package:mat_dummy/utils/consts.dart';


class GradientColor extends StatelessWidget {
  const GradientColor({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.40 > 300
          ? size.height * 0.40
          : 300,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          Colors.transparent,
          background_primary.withOpacity(0.30),
          background_primary.withOpacity(0.55),
          background_primary.withOpacity(0.85),
          background_primary.withOpacity(1.0),
        ],
        
      )),
    );
  }
}