import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_1.dart';
import 'custom_text_2.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.0,
      width: 270.0,
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
                blurRadius: 5.0)
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
              maxline: 6,
              color: Colors.white70,
              text:
              "Some stories of my coding life are presented through this project.Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project. Some stories of my coding life are presented through this project.  Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob",
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 15.0, vertical: 16.0),
            color: Colors.blue.shade900,
            child: const Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  text: "Source",
                  hovertext: "Source",
                ),
                SizedBox(
                  width: 10.0,
                ),
                CustomButton(
                  text: "Preview",
                  hovertext: "Preview",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
