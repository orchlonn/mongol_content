import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/success%20screen/components/main_body_success.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/images/logo.png",
          height: 50,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainBodySuccess(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  const SizedBox(width: 15),
                  const Text("Visit us on"),
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
