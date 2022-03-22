import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/failed_screen/components/main_body_fail.dart';
import 'package:mongol_content/styles.dart';
import 'package:mongol_content/success%20screen/components/main_body_success.dart';

class FailedScreen extends StatelessWidget {
  const FailedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/images/logo_black.png",
          height: 60,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainBodyFailed(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(0, 3),
                  blurRadius: 10.0,
                )
              ], color: whiteColor, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  Text(
                    "Visit us on",
                    style: CustomStyles.mediumTextSemiBold(context,
                        textColor: blackColor),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/images/facebook.png",
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    "assets/images/youtube.png",
                    height: 40,
                  ),
                  const SizedBox(width: 15),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
