import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';

class Articles extends StatelessWidget {
  Articles({super.key});
  Timer? _toastTimer;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF232227),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: (w / 2 - 16) / 150,
          ),
          itemCount: 50,
          itemBuilder: (context, index) {
            return HoverWidget(
              hoverChild: Container(
                  height: 150,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(color: Colors.blueAccent, width: 1)),
                  child:  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomText2(
                            text:
                                "Flutter isolates – everything you need to know",
                            maxline: 1,
                            color: Colors.blueAccent,

                          ),
                        ),
                        Expanded(
                          child: CustomText1(
                            text:
                                "The word “isolate” shouldn’t be new to you — since the pandemic started, it has become a buzzword. Chances are you’ve also heard the term used in relation to Flutter, but what exactly is an isolate in this context? How does Dart execute code? How do you implement a isolate? All these questions will be answered in this article.",
                            maxline: 2,
                            color: Colors.white60,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText1(text: "Flutter", color: Colors.blue,),
                            Icon(Icons.arrow_right_sharp, color: Colors.blueAccent,size: 25.0,)
                          ],
                        )
                      ],
                    ),
                  )),
              onHover: (event) {
                _showToast(context);
              },
              child: Container(
                  height: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.white.withOpacity(0.01),
                      border: Border.all(color: Colors.white70, width: 0.2)),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CustomText2(
                            text:
                                "Flutter isolates – everything you need to know",
                            maxline: 1,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Expanded(
                          child: CustomText1(
                            text:
                                "The word “isolate” shouldn’t be new to you — since the pandemic started, it has become a buzzword. Chances are you’ve also heard the term used in relation to Flutter, but what exactly is an isolate in this context? How does Dart execute code? How do you implement a isolate? All these questions will be answered in this article.",
                            maxline: 2,
                          ),
                        ),
                        Row(
                          children: [],
                        )
                      ],
                    ),
                  )),
            );
          },
        ),
      ),
    );
  }

  void _showToast(BuildContext context) {
    // Cancel any existing timer
    _toastTimer?.cancel();

    Fluttertoast.showToast(
      msg: "Click to view project details",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black.withOpacity(0.7),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
  void hideToast() {
    _toastTimer?.cancel();
  }
}
