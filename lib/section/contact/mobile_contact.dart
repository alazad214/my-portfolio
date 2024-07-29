import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

import '../../utils/contact_item.dart';
import '../../widgets/custom_line.dart';
import '../../widgets/custom_text_2.dart';
import '../../widgets/custom_textfield.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomLine(
          text: "Contact Now",
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText2(
                  text: "Social media",
                  fontsize: 16.0,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 10.0),
                Wrap(
                  children: [
                    for (int i = 0; i < contactImage.length; i++)
                      HoverWidget(
                        hoverChild: Container(
                          height: 45.0,
                          width: 45.0,
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Image.asset(
                            contactImage[i]["img"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        onHover: (event) {},
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          margin:
                              const EdgeInsets.only(right: 10.0, bottom: 10.0),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Image.asset(
                            contactImage[i]["img"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const CustomText2(
                  text: "Address Details",
                  fontsize: 16.0,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 10.0),
                const ListTile(
                  title: CustomText2(
                    text: "Thakkurgaon, Bangladesh",
                    fontsize: 14.0,
                  ),
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  title: CustomText2(
                    text: "(+88)01763551316)",
                    fontsize: 14.0,
                  ),
                  leading: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  title: CustomText2(
                    text: "alazadcmt@gmail.com",
                    fontsize: 14.0,
                  ),
                  leading: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                CustomTextField(
                  hinttext: "Type name here",
                  line: 1,
                  prefixicon: const Icon(Icons.person_outline_rounded),
                  onchanged: (name) {},
                ),
                CustomTextField(
                  hinttext: "Type email here",
                  line: 1,
                  prefixicon: const Icon(Icons.email_outlined),
                  onchanged: (name) {},
                ),
                CustomTextField(
                  hinttext: "Message",
                  line: 3,
                  onchanged: (name) {},
                ),
                HoverWidget(
                  hoverChild: Container(
                    margin: const EdgeInsets.only(right: 10, left: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: const Center(
                      child: Text(
                        "Send me ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onHover: (event) {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 5),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: const Center(
                      child: Text(
                        "Send me ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
