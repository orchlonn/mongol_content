import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  const PrimaryButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3),
              blurRadius: 10.0,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          color: primaryColor,
        ),
        child: Center(
          child: Text(
            "Proceed",
            style: CustomStyles.btnTextSemiBold(context),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
