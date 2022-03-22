import 'package:flutter/material.dart';
import 'package:mongol_content/styles.dart';

class InformatoinBody extends StatelessWidget {
  const InformatoinBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey.shade400),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              )),
          child: Image.asset(
            "assets/images/locked.png",
            height: 42,
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: "* * * * ",
                hintStyle:
                    CustomStyles.titleRegular(context, textColor: Colors.black),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey.shade400),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                )),
          ),
        )
      ],
    );
  }
}
