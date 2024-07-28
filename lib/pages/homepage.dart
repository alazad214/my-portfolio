import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_me.dart';
import 'package:portfolio/pages/articles.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/widgets/custom_resume_button.dart';
import 'package:portfolio/widgets/custom_tabBar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                //1st container
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xFF232227),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 5)
                      ]),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Al Azad",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      CustomTabbar(),
                      CustomResumeButton()
                    ],
                  ),
                ),
                // TabBarView
                const Expanded(
                  child: TabBarView(
                    children: [
                     AboutMe(),
                      Projects(),
                      Articles()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
