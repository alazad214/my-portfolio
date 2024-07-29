import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/section/education/desktop_education.dart';
import 'package:portfolio/section/education/mobile_education.dart';
import 'package:portfolio/widgets/custom_line.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';

import '../section/main/desktop_main.dart';
import '../section/main/mobile_main.dart';
import '../section/skills/skills.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: const Color(0xFF232227),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Skills section -->
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Main section-->
                      if (constraints.maxWidth >= 650)
                        const DesktopMain()
                      else
                        const MobileMain(),
                      const SizedBox(
                        height: 20,
                      ),
                      //Skills section-->
                      const Skills(),
                      //Skills section-->

                      if (constraints.maxWidth >= 650)
                        const DesktopEducation()
                      else
                        const MobileEducation(),
                      const SizedBox(
                        height: 20,
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
