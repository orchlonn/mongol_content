import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/styles.dart';

class FailScreenButton extends StatelessWidget {
  final VoidCallback onPressed;
  const FailScreenButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        height: 60,
        color: failPinkColor,
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.refresh,
                size: 25,
                color: whiteColor,
              ),
              const SizedBox(width: 5),
              Text(
                "Try again",
                style: CustomStyles.btnTextSemiBold(context),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
