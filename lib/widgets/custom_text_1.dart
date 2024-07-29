import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText1 extends StatelessWidget {
  final text;
  const CustomText1({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return        Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12, // Responsive font size
      ),
    );
  }
}
