import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/styles.dart';
import 'package:mongol_content/success%20screen/components/success_button.dart';

class MainBodySuccess extends StatelessWidget {
  const MainBodySuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            // color: Colors.grey.shade500,
            color: primaryColor,
            offset: Offset(0, 3),
            blurRadius: 10.0,
          )
        ],
        borderRadius: BorderRadius.circular(5),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: primaryColor,
                  ),
                  child: const Icon(
                    Icons.check,
                    size: 35,
                    color: whiteColor,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Successful",
                  style: CustomStyles.succesTextSemiBold(context,
                      textColor: primaryColor),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  child: Text(
                    "You have successfully recharged.",
                    style: CustomStyles.textSemiBold(context),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 340,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SuccessScreenButton(
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
