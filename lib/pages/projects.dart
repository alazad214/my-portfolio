import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';
import 'package:portfolio/widgets/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
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
                    fontsize: 14.0,
                    color: Colors.white70,
                    text:
                        "Some stories of my coding life are presented through this project. Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Wrap(
                  runSpacing: 20.0,
                  spacing: 20.0,
                  children: [for (int i = 0; i < 15; i++) ProjectCard()],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
