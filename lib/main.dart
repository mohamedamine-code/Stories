import 'package:flutter/material.dart';
import 'package:stories/home_page.dart';

void main() {
  runApp( App());
}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  HomePage(),
    );
  }
}
