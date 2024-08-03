import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_me.dart';
import 'package:portfolio/pages/articles.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/section/header/desktop_header.dart';
import 'package:portfolio/section/header/mobile_header.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color(0xFF232227),
          body: SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //1st container
                    if (constaints.maxWidth >= 650)
                      const DesktopHeader()
                    else
                      const MobileHeader(),

                    // TabBarView
                    Expanded(
                      child: TabBarView(
                        children: [AboutMe(), Projects(), Articles()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
