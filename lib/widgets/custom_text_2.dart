import 'package:flutter/material.dart';

class CustomText2 extends StatelessWidget {
  final text;
  const CustomText2({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return        Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24, // Responsive font size
      ),
    );
  }
}
