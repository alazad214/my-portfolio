import 'package:flutter/material.dart';

import '../../widgets/custom_resume_button.dart';
import '../../widgets/custom_tabBar.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 900,
      ),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xFF232227),
            boxShadow: const [
              BoxShadow(color: Colors.black, spreadRadius: 0.5, blurRadius: 5)
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
    );
  }
}
