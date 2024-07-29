import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class CustomLine extends StatelessWidget {
  final String? text;
  final padding;
  const CustomLine({super.key, this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: Padding(
        padding: padding??const EdgeInsets.only(),
        child: Row(
          children: [

            Text(
              text!,
              style: const TextStyle(
                color: Colors.blueAccent,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 10,),
            const Expanded(
              child: Divider(
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(width: 10,),
          ],
        ),
      ),
      onHover: (event) {},
      child: Padding(
        padding: padding??const EdgeInsets.only(),
        child: Row(
          children: [

            Text(
              text!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 10,),
            const Expanded(
              child: Divider(
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),
          ],
        ),
      )
    );

  }
}
