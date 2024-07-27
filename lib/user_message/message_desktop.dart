import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/user_message/user_message.dart';



class MessageDesktop extends StatelessWidget {
  const MessageDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 90.0),
        width: screenWidth,
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(8)),
        child: UserMessage());
  }
}
