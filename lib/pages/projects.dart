import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: Center(
        child: Text("Projects",style: TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }
}
