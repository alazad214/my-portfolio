import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Wrap with Fixed Size Containers')),

    );
  }
}
