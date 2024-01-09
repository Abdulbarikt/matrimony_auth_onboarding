import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class DottedLinesWidget extends StatelessWidget {
  const DottedLinesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DottedLine(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      lineLength: 50,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: Colors.grey,
      dashRadius: 10.0,
    );
  }
}
