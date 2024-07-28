import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0xFF232227),
      body: Center(
        child: Text("About me", style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}
