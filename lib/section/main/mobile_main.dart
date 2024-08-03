import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MobileMain extends StatelessWidget {
  const MobileMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'assets/images/mypic.jpg',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
          ),
        ),
        const SizedBox(height: 20), // Spacing between image and text
        const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Text(
                "As a Flutter full-stack developer in the works for the last 6 months, I have experience working with GetX, Rest API and Firebase. I am confident in working with any Flutter App Project. My main areas of interest are front-end and full-stack Flutter App Development",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
