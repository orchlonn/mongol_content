import 'package:flutter/material.dart';
import 'package:mongol_content/styles.dart';

class BuildTextField extends StatelessWidget {
  final String text;
  final Color color;
  const BuildTextField({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: CustomStyles.titleRegular(context, textColor: color),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue.shade100),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue.shade100),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            )),
      ),
    );
  }
}
