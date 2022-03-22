import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/confirmation_screen/view/confirmation_screen.dart';
import 'package:mongol_content/send_money_screen/components/build_photo.dart';
import 'package:mongol_content/send_money_screen/components/green_line.dart';
import 'package:mongol_content/send_money_screen/components/middle_positioned.dart';
import 'package:mongol_content/send_money_screen/components/text_field.dart';
import 'package:mongol_content/shared/primary_button.dart';
import 'package:mongol_content/styles.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  Widget _buildForms(String formText, Color color, String photoUrl) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          BuildTextField(
            text: formText,
            color: color,
          ),
          BuildPhoto(
            photoUrl: photoUrl,
          ),
        ],
      ),
    );
  }

  Widget _buildSingleForm(String formText) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: [
          BuildTextField(
            color: Colors.grey,
            text: formText,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.shade50,
              offset: const Offset(0, 3),
              blurRadius: 10.0,
            )
          ]),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 27),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              "Send money",
              style: CustomStyles.titleRegular(context),
            ),
            centerTitle: false,
            backgroundColor: whiteColor,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 3),
                        blurRadius: 10.0,
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(top: 50),
                  width: double.infinity,
                  height: 320,
                  child: Column(
                    children: [
                      _buildForms("Account code", Colors.grey,
                          "assets/images/qr_blue.png"),
                      _buildSingleForm("Invoice number"),
                      _buildForms(
                          "3,500.00", blackColor, "assets/images/ks.png"),
                    ],
                  ),
                ),
                const StackedGreenLine(),
                const MiddlePositionedPhone(),
              ],
            ),
            PrimaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ConfirmationScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
