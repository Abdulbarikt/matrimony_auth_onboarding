import 'package:flutter/material.dart';

class EditContainerWidget extends StatelessWidget {
  const EditContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black, // Outline color
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
      child: const Icon(Icons.edit_rounded),
    );
  }
}