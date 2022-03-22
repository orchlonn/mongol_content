import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/styles.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: primaryColor,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding:
                const EdgeInsets.only(bottom: 25, left: 20, right: 20, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Available Balance",
                  style:
                      CustomStyles.titleRegular(context, textColor: whiteColor),
                ),
                Text(
                  "315,18.00 Ks",
                  style: CustomStyles.titleBold(context, textColor: whiteColor),
                ),
              ],
            ),
          ),
          Positioned(
            left: size.width * .71,
            top: size.height * .1,
            child: Container(
              height: 95,
              width: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Colors.amber,
              ),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 25, left: 30, right: 30),
                    child: Image.asset("assets/images/qr_code.png"),
                  ),
                  Text(
                    "SCAN QR",
                    style: CustomStyles.titleSmallSemiBold(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
