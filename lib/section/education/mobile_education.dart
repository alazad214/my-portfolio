import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/custom_line.dart';
import '../../widgets/custom_text_1.dart';
import '../../widgets/custom_text_2.dart';

class MobileEducation extends StatelessWidget {
  const MobileEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomLine(
          text: "Education",
          padding: EdgeInsets.only(top: 20, bottom: 10),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                vertical: 10, // Responsive padding
                horizontal: 10.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(5.0.r), // Responsive border radius
                color: const Color(0xFF232227),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText2(
                    fontsize: 19.0,
                      text: "Diploma in Computer Technology,"),
                  CustomText1(
                    text: "Thakurgaon polytechnic institute,",
                  ),
                  CustomText1(
                    text: "Thakurgaon, Bangladesh.",
                  ),
                  CustomText1(
                    text: "present CGPA: 3.75 out of 4.00",
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                vertical: 10, // Responsive padding
                horizontal: 10.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(5.0.r), // Responsive border radius
                color: const Color(0xFF232227),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 0.5,
                    blurRadius: 5,
                  )
                ],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  CustomText2(
                      fontsize: 19.0,
                      text: "Secondary School Certificate,"),
                  CustomText1(
                    text: "Baliadangi pilot model high school,",
                  ),
                  CustomText1(
                    text: "Baliadangi, Thakurgaon.",
                  ),
                  CustomText1(
                    text: "GPA: 5.00 out of 5.00",
                  ),
                ],
              ),
            ),


          ],
        ),
      ],
    );
  }
}
