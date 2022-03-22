import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';

class StackedGreenLine extends StatelessWidget {
  const StackedGreenLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: greenColor,
      ),
    );
  }
}
