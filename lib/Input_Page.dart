import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

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
        title: const Center(
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
                    cardChild: iconContent(),

                  ),

                ),
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                    cardChild: iconContent(),
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable(
              colour: activeCardColor,
              cardChild: iconContent(),
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                    cardChild: iconContent(),
                  )
                ),
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                    cardChild: iconContent(),
                  )
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

class iconContent extends StatelessWidget {
  iconContent({required this.icon, required this.label})

 final IconData icon;
 final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          'Male',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98)
          )
        )


      ],
    );
  }
}

class Reuseable extends StatelessWidget {
  Reuseable({required this.colour, required this.cardChild});
 final  Color colour;
 final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,//Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
