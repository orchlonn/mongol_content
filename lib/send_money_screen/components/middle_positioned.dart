import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';

class MiddlePositionedPhone extends StatelessWidget {
  const MiddlePositionedPhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      top: -30,
      left: size.width * .37,
      child: Container(
        width: 70,
        height: 70,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: greenColor,
        ),
        child: Image.asset("assets/images/mobile_white.png"),
      ),
    );
  }
}
