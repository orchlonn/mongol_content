import 'package:flutter/material.dart';
import 'package:mongol_content/colors.dart';
import 'package:mongol_content/send_money_screen/view/send_money_screen.dart';
import 'package:mongol_content/styles.dart';

class Services extends StatelessWidget {
  const Services({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 60),
        child: GridView.builder(
            physics: const ScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.8),
            ),
            itemCount: 7,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SendMoneyScreen(),
                      ),
                    );
                  }
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          contents[index].photo,
                          height: size.height * .05,
                        ),
                        const SizedBox(height: 7),
                        Text(
                          contents[index].title,
                          textAlign: TextAlign.center,
                          style: CustomStyles.textSemiBold(context),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class _ContentsOfService {
  String title;
  String photo;

  _ContentsOfService({this.title = "", this.photo = ""});
}

List<_ContentsOfService> contents = [
  _ContentsOfService(
      title: 'Cash-In for customer',
      photo: "assets/images/service_photo_1.png"),
  _ContentsOfService(
      title: 'Cash-Out via voucher',
      photo: "assets/images/service_photo_2.png"),
  _ContentsOfService(
      title: 'Send money', photo: "assets/images/service_photo_3.png"),
  _ContentsOfService(
      title: 'Top-Up & Data', photo: "assets/images/service_photo_4.png"),
  _ContentsOfService(
      title: 'Cash-Out for Agent', photo: "assets/images/service_photo_5.png"),
  _ContentsOfService(
      title: 'Fast pay', photo: "assets/images/service_photo_6.png"),
  _ContentsOfService(
      title: 'MPT Bills', photo: "assets/images/service_photo_7.png"),
];
