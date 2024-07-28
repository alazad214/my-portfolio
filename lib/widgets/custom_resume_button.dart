import 'package:flutter/material.dart';

class CustomResumeButton extends StatelessWidget {
  const CustomResumeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30.0,
        padding: const EdgeInsets.only(left: 8),
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.remove_red_eye_outlined,
              size: 16,
            ),
            const SizedBox(width: 5),
            const Text("Resume"),
            const SizedBox(
                width:
                5), // Optional: spacing between text and divider
            Container(
              height: 35.0,
              width: 1.0,
              color: Colors.black, // Divider color
            ),

            Container(
              alignment: Alignment.topCenter,
              child: PopupMenuButton(
                padding: const EdgeInsets.only(bottom: 1),
                icon: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
                onSelected: (String value) {},
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(
                        value: 'Option 1',
                        onTap: () {},
                        child: const Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text("Download"),
                          ],
                        )),
                  ];
                },
              ),
            )
          ],
        ));
  }
}
