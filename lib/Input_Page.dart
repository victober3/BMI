import 'dart:html';
import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";
import 'Icon_Content.dart';
import 'Reuseable_Card.dart';

 const BottomContainerHeight = 80.0;
 const activeCardColor = Color(0xFF1D1F33) ;
 const bottomContainerColor =  Color(0xffEB1555);

class Input_Page extends StatefulWidget {
  //const InputPage({Key? key}) : super(key: key);

  @override
  _Input_PageState createState() => _Input_PageState();
}

class _Input_PageState extends State<Input_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: activeCardColor,
        title:  Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),

                      ),
                    ),
              ]
                  ),

                ),
                Expanded(
                  child: Reuseable(
                    colour: activeCard Color,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                  ),
                  )
                ),
          Expanded(
            child: Reuseable(
              colour: activeCardColor,

          ),
          ),

          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                    ),
                   ),



                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                   ),
                ),
              ],
            ),
          ),

          Container(
            child: Center(
              child: Text(
                'CALCULATE YOUR BMI',
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
              ),
            ),
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomContainerHeight,
          ),
        ],
    ),
    );
  }
}



