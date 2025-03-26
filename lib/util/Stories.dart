// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stories/storie_page.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => StoriePage()));
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          width: 80,
        ),
      ),
    );
  }
}
