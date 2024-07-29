import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text_1.dart';
import 'package:portfolio/widgets/custom_text_2.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText2(
                  text: "Projects",
                  fontsize: 35.0,
                ),
                const CustomText1(
                  text:
                      "Some stories of my coding life are presented through this project. Here is \na collection of projects that showcase my skills in Flutter, Dart, Firebase, \nRest API, Getx, Local Storage, Responsive Design, Payment gateway, admob",
                ),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    for (int i = 0; i < 15; i++)
                    Container(
                      height: 320,
                      width: 270,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                            Container(
                              clipBehavior: Clip.antiAlias,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          const Padding(
                            padding: EdgeInsets.only(
                                right: 10, left: 10, top: 5, bottom: 0),
                            child: Text(
                              "fjdflkjakldfj",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 10, left: 10, top: 3, bottom: 5),
                            child: Text(
                              "fjadlkfjlkajdf",
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 16),
                            color: Colors.blueGrey,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'source',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ))),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () async {},
                                        child: const Text(
                                          'preview',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ))),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
