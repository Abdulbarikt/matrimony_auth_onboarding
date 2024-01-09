import 'package:flutter/material.dart';

class ProfileContainerWidget extends StatelessWidget {
  const ProfileContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white60, // Outline color
            width: 2, // Outline width
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 8, // Blur radius
              offset: const Offset(0, 10), // Offset position of shadow
            ),
          ]
      ),
    );
  }
}