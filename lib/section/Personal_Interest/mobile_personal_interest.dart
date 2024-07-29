import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../utils/personal_enterest_string.dart';
import '../../widgets/custom_line.dart';
import '../../widgets/custom_text_1.dart';
import '../../widgets/custom_text_2.dart';

class MobilePersonalInterest extends StatelessWidget {
  const MobilePersonalInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomLine(
            text: "Personal Interest", padding: EdgeInsets.only(bottom: 15.0)),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              for (int i = 0; i < personalInterest.length; i++)
                HoverAnimatedContainer(
                    height: 100.0,
                    hoverHeight: 120.0,
                    hoverDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.blueAccent, width: 1.0)),
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          vertical: 2.0, horizontal: 7.0),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color(0xFF232227),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.5,
                                blurRadius: 5.0)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          Expanded(
                            child: CustomText2(
                              text: personalInterest[i]["title"],
                              fontsize: 18.0,
                              color: Colors.blueAccent,
                            ),
                          ),
                          Expanded(
                            child: CustomText1(
                              text: personalInterest[i]["dis"],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                        ],
                      ),
                    )),
            ],
          ),
        )
      ],
    );
  }
}
