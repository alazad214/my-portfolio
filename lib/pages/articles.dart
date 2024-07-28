import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: Center(
        child: Text("Articles",style: TextStyle(
            color: Colors.white
        ),),
      ),
    );
  }
}
