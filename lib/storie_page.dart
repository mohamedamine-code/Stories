// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stories/stories/storie1.dart';
import 'package:stories/stories/storie2.dart';
import 'package:stories/stories/storie3.dart';
import 'package:stories/util/Storis_bar.dart';
import 'package:stories/util/progress_bar.dart';

class StoriePage extends StatefulWidget {
  const StoriePage({super.key});

  @override
  State<StoriePage> createState() => _StoriePageState();
}

class _StoriePageState extends State<StoriePage> {
  int currentStoryIndex = 0;
  List<Widget> MyStories = [
    Storie1(),
    Storie2(),
    Storie3(),
  ];
  List<double> MyprecentWatche = [];

  Timer? storyTimer; //new

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < MyStories.length; i++) {
      MyprecentWatche.add(0);
    }
    startWatching();
  }

  void startWatching() {


    storyTimer=Timer.periodic(Duration(milliseconds: 50), (tmp) {
      setState(() {
        if (MyprecentWatche[currentStoryIndex] + 0.01 < 1) {
          MyprecentWatche[currentStoryIndex] += 0.01;
        } else {
          MyprecentWatche[currentStoryIndex] = 1;
          tmp.cancel();
          if (currentStoryIndex < MyStories.length - 1) {
            currentStoryIndex++;
            startWatching();
          } else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  void ontap(TapDownDetails details) {
    final double screnSize = MediaQuery.of(context).size.width;
    final dx = details.globalPosition.dx;
    if (dx < screnSize / 2) {
      setState(() {
        if (currentStoryIndex > 0) {
          currentStoryIndex--;
          MyprecentWatche[currentStoryIndex] = 0;
          MyprecentWatche[currentStoryIndex + 1] = 0;
        } else {
          Navigator.pop(context);
        }
      });
    } else {
      if (currentStoryIndex < MyStories.length - 1) {
        currentStoryIndex++;
        MyprecentWatche[currentStoryIndex] = 0;
        MyprecentWatche[currentStoryIndex - 1] = 1;
      } else {
        Navigator.pop(context);
      }
    }
  }

  @override
  void dispose() {
    storyTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => ontap(details),
      child: Scaffold(
        body: Stack(
          children: [
            MyStories[currentStoryIndex],
            StorisBar(
              MyprecentWatche: MyprecentWatche,
            )
          ],
        ),
      ),
    );
  }
}
