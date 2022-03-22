import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/confirmation_screen/components/info_body.dart';
import 'package:mongol_content/failed_screen/view/failed_screen.dart';
import 'package:mongol_content/shared/primary_button.dart';
import 'package:mongol_content/styles.dart';
import 'package:mongol_content/success%20screen/view/success_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isFailed = false;
    return Scaffold(
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
              "Confirmation",
              style: CustomStyles.titleRegular(context),
            ),
            centerTitle: false,
            backgroundColor: whiteColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade500,
                      offset: const Offset(0, 3),
                      blurRadius: 10.0,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Account code",
                            style: CustomStyles.textSemiBold(context),
                          ),
                          Text(
                            "912845319723",
                            style: CustomStyles.btnTextSemiBold(context,
                                textColor: primaryColor),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Invoice number",
                            style: CustomStyles.textSemiBold(context),
                          ),
                          Text(
                            "45488453",
                            style: CustomStyles.btnTextSemiBold(context,
                                textColor: primaryColor),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amount",
                            style: CustomStyles.textSemiBold(context),
                          ),
                          Text(
                            "3,500.00 Ks",
                            style: CustomStyles.btnTextSemiBold(context,
                                textColor: primaryColor),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Transaction fee",
                            style: CustomStyles.textSemiBold(context),
                          ),
                          Text(
                            "0.00 Ks",
                            style: CustomStyles.btnTextSemiBold(context,
                                textColor: primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          color: primaryColor,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total amount",
                                  style: CustomStyles.textSemiBold(context,
                                      textColor: whiteColor)),
                              Text(
                                "3,500.00 Ks",
                                style: CustomStyles.btnTextSemiBold(context,
                                    textColor: whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Text("PIN code /4 digit/",
                  style: CustomStyles.btnTextSemiBold(context,
                      textColor: blackColor)),
              const SizedBox(height: 10),
              const InformatoinBody(),
              const SizedBox(height: 20),
              const Center(
                  child:
                      Text("Please confirm transaction details are correct")),
              const SizedBox(height: 20),
              PrimaryButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // builder: (context) => const SuccessScreen(),
                      builder: (context) =>
                          isFailed ? FailedScreen() : SuccessScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
