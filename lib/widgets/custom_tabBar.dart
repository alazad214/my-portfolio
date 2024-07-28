import 'package:flutter/material.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.blue,
        dividerColor: Colors.transparent,
        padding: EdgeInsets.only(left: 15),
        labelPadding: EdgeInsets.only(right: 15),
        tabAlignment: TabAlignment.start,
        labelStyle: TextStyle(
            color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
        tabs: [
          Tab(
            text: "ABOUT ME",
          ),
          Tab(
            text: "PROJECTS",
          ),
          Tab(
            text: "ARTICLES",
          ),
        ],
      ),
    );
  }
}
