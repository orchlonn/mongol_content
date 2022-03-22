import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';

class BuildPhoto extends StatelessWidget {
  Color borderColor;
  final String photoUrl;
  BuildPhoto({
    Key? key,
    required this.photoUrl,
    this.borderColor = blueShade100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: borderColor),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          )),
      child: Image.asset(
        photoUrl,
        height: 42,
      ),
    );
  }
}
