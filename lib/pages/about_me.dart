import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/section/Personal_Interest/desktop_personal_interest.dart';
import 'package:portfolio/section/Personal_Interest/mobile_personal_interest.dart';
import 'package:portfolio/section/education/desktop_education.dart';
import 'package:portfolio/section/education/mobile_education.dart';
import 'package:portfolio/section/skills/desktop_skills.dart';
import 'package:portfolio/section/skills/mobile_skills.dart';
import 'package:portfolio/utils/contact_item.dart';
import 'package:portfolio/utils/personal_enterest_string.dart';
import 'package:portfolio/widgets/custom_line.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';

import '../section/main/desktop_main.dart';
import '../section/main/mobile_main.dart';
import '../section/skills/skills.dart';
import '../utils/platform.dart';

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

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomLine(
                            text: "Contact Now",
                          ),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomText2(
                                      text: "Social media",
                                      fontsize: 16.0,
                                      color: Colors.blueAccent,
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        for (int i = 0;
                                            i < contactImage.length;
                                            i++)
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: 45.0,
                                              width: 45.0,
                                              margin: const EdgeInsets.only(
                                                  right: 10.0),
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                  border: Border.all(
                                                      color: Colors.white)),
                                              child: Image.asset(
                                                contactImage[i]["img"],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText2(
                                      text: "Address Details",
                                      fontsize: 16.0,
                                      color: Colors.blueAccent,
                                    ),
                                    ListTile(
                                      title: CustomText2(
                                        text: "Thakkurgaon, Bangladesh",
                                        fontsize: 14.0,
                                      ),
                                      leading: Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ListTile(
                                      title: CustomText2(
                                        text: "(+88)01763551316)",
                                        fontsize: 14.0,
                                      ),
                                      leading: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ),
                                    ),
                                    ListTile(
                                      title: CustomText2(
                                        text: "alazadcmt@gmail.com",
                                        fontsize: 14.0,
                                      ),
                                      leading: Icon(
                                        Icons.email,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
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
