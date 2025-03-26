import 'package:flutter/material.dart';
import 'package:stories/stories/storie1.dart';
import 'package:stories/stories/storie2.dart';
import 'package:stories/stories/storie3.dart';

class StoriePage extends StatefulWidget {
  const StoriePage({super.key});

  @override
  State<StoriePage> createState() => _StoriePageState();
}

class _StoriePageState extends State<StoriePage> {
  List<Widget> MyStories = [
    Storie1(),
    Storie2(),
    Storie3(),
  ];

  @override
  Widget build(BuildContext context) {
    return MyStories[0];
  }
}
