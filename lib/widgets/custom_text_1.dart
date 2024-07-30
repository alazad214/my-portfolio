import 'package:flutter/material.dart';

class CustomText1 extends StatelessWidget {
  final text;
  final overflow;
  final maxline;
  final fontsize;
  final color;
  const CustomText1(
      {super.key,
      this.text,
      this.overflow,
      this.maxline,
      this.fontsize,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: maxline,
      style: TextStyle(
        color: color ?? Colors.white,

        fontSize: fontsize ?? 12.0, // Responsive font size
      ),
    );
  }
}
