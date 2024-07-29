import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText2(
                    text: "Projects",
                    fontsize: 35.0,
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText1(
                    text:
                        "Some stories of my coding life are presented through this project. Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    for (int i = 0; i < 15; i++)
                      Container(
                        height: 270,
                        width: 270,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: const Color(0xFF232227),
                            border:
                                Border.all(color: Colors.white30, width: 0.5),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 0.5,
                                  blurRadius: 5)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 10.0),
                              child: CustomText2(
                                text: "Foodie Fat",
                                fontsize: 25.0,
                                color: Colors.blueAccent,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: CustomText1(
                                maxline: 6.0,
                                text:
                                    "Some stories of my coding life are presented through this project.Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project.  Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob",
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 16),
                              color: Colors.blue.shade900,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                 CustomButton(text: "Source",hovertext: "Source",),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CustomButton(text: "Preview",hovertext: "Preview",)

                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
