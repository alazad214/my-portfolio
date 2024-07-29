import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class CustomLine extends StatelessWidget {
  final String? text;
  final padding;
  final textflex;
  final lineflex;
  const CustomLine(
      {super.key, this.text, this.padding, this.textflex, this.lineflex});

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        hoverChild: Padding(
          padding: padding ?? const EdgeInsets.only(),
          child: Row(
            children: [
              Text(
                text!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: lineflex ?? 6,
                child: const Divider(
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        onHover: (event) {},
        child: Padding(
          padding: padding ?? const EdgeInsets.only(),
          child: Row(
            children: [
              Text(
                text!,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: lineflex ?? 6,
                child: const Divider(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ));
  }
}
