import 'package:flutter/material.dart';
import 'package:mat_dummy/app/utils/app_textstyles.dart';

class ColumnText extends StatelessWidget {
  final String tile;
  final String sub;
  const ColumnText({super.key, required this.tile, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          tile,
          style: AppTextStyles.profileMainTitle,
        ),
        Text(
          sub,
          style: AppTextStyles.profileMainSub,
        ),
      ],
    );
  }
}
