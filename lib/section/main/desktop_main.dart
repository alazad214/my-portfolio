import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:hovering/hovering.dart';

class DesktopMain extends StatelessWidget {
  const DesktopMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HoverAnimatedContainer(
          width: 200,
          height: 200,
          hoverWidth: 220,
          hoverHeight: 220,
          hoverDecoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8.0),
          ),
          duration: const Duration(milliseconds: 300),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: BorderRadius.circular(4.0),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              'assets/images/azad.jpg',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
          ),
        ),

        const SizedBox(width: 20), // Spacing between image and text
        const Expanded(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello, I'm ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Al Azad",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 35.0),
                  child: Text(
                    "As a Flutter full-stack developer in the works for the last 6 months, I have experience working with GetX, Rest API and Firebase. I am confident in working with any Flutter App Project. My main areas of interest are front-end and full-stack Flutter App Development",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
