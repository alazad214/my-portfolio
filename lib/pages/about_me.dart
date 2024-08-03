import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/section/Personal_Interest/desktop_personal_interest.dart';
import 'package:portfolio/section/Personal_Interest/mobile_personal_interest.dart';
import 'package:portfolio/section/contact/desktop_contact.dart';
import 'package:portfolio/section/contact/mobile_contact.dart';
import 'package:portfolio/section/education/desktop_education.dart';
import 'package:portfolio/section/education/mobile_education.dart';
import 'package:portfolio/section/skills/desktop_skills.dart';
import 'package:portfolio/section/skills/mobile_skills.dart';
import '../section/main/desktop_main.dart';
import '../section/main/mobile_main.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: const Color(0xFF232227),
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

                      if (constraints.maxWidth >= 650)
                        const DesktopSkills()
                      else
                        const MobileSkills(),
                      const SizedBox(
                        height: 20,
                      ),
                      //Education section-->

                      if (constraints.maxWidth >= 650)
                        const DesktopEducation()
                      else
                        const MobileEducation(),
                      const SizedBox(
                        height: 20,
                      ),
                      if (constraints.maxWidth >= 650)
                        const DesktopPersonalInterest()
                      else
                        const MobilePersonalInterest(),
                      const SizedBox(
                        height: 20,
                      ),
                      if (constraints.maxWidth >= 650)
                        const DesktopContact()
                      else
                        const MobileContact(),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
