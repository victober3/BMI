import 'package:flutter/material.dart';
import 'Input_Page.dart';

void main() {
  runApp(const BMICalculator(),);
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        // textTheme: TextTheme(//to set all the text color to white
         // bodyText1: TextStyle(color: Colors.white),
    ),
      home:  Input_Page(),

    );
  }
}

