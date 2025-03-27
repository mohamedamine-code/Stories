import 'package:flutter/material.dart';
import 'package:stories/util/progress_bar.dart';

class StorisBar extends StatelessWidget {
  List <double> MyprecentWatche = [];
  StorisBar({
    required this.MyprecentWatche,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Expanded(
              child: ProgressBar(
            precentWatch: MyprecentWatche[0],
          )),
          Expanded(
              child: ProgressBar(
            precentWatch: MyprecentWatche[1],
          )),Expanded(
              child: ProgressBar(
            precentWatch: MyprecentWatche[2],
          )),
          
        ],
      ),
    );
  }
}
