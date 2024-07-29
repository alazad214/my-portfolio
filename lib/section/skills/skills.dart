import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_line.dart';

import '../../utils/platform.dart';

class Skills extends StatelessWidget {
  final width;
  const Skills({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomLine(
          text: "Skills",
        ),
        Align(
          alignment: Alignment.center,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Container(
                  width: width,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xFF232227),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            spreadRadius: 0.5,
                            blurRadius: 5)
                      ]),
                  child: Column(
                    children: [
                      Image.asset(
                        skillItems[i]["img"],
                        width: 30,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        skillItems[i]["title"],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
            ],
          ),
        )
      ],
    );
  }
}
