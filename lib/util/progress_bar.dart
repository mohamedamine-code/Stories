import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  double precentWatch = 0;
  ProgressBar({
    required this.precentWatch,
  });
  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      percent: precentWatch,
      lineHeight: 10,
      backgroundColor: Colors.grey[900],
      progressColor: Colors.grey[500],
    );
  }
}
