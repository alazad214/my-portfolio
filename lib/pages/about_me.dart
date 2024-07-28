import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/section/main/desktop_main.dart';
import 'package:portfolio/section/main/mobile_main.dart';
import 'package:portfolio/section/skills/skills.dart';
import 'package:portfolio/utils/platform.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return LayoutBuilder(builder: (context, constaints) {
      return Container(
        color: const Color(0xFF232227),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (constaints.maxWidth >= 650)
                  const DesktopMain()
                else
                  const MobileMain(),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.white,
                ),
                const Skills(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Education",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
