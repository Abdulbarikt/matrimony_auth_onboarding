import 'package:flutter/material.dart';
import 'package:mat_dummy/app/utils/consts.dart';

class ProfileCardContainer extends StatelessWidget {
  const ProfileCardContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.22,
      decoration: BoxDecoration(
          gradient: newGradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3), // Offset position of shadow
            )
          ]
      ),
    );
  }
}