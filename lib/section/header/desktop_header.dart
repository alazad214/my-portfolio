import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../widgets/custom_resume_button.dart';
import '../../widgets/custom_tabBar.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xFF232227),
          boxShadow: const [
            BoxShadow(color: Colors.black, spreadRadius: 0.5, blurRadius: 5)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HoverWidget(
            hoverChild: const Icon(
              Icons.code,
              color: Colors.blueAccent,
              size: 35.0,
            ),
            onHover: (event) {},
            child: const Icon(
              Icons.code,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          const CustomTabbar(),
          const CustomResumeButton()
        ],
      ),
    );
  }
}
