import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.hovertext, this.text});
  final hovertext;
  final text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: HoverWidget(
        hoverChild: Container(
          margin: const EdgeInsets.only(right: 10.0, left: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(6.0)),
          child: Center(
            child: Text(
              hovertext,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        onHover: (event) {},
        child: Container(
          margin: const EdgeInsets.only(right: 10.0, left: 5.0),
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Colors.blue, width: 2.0)),
          child: Center(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
