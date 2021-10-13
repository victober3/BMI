import 'package:flutter/material.dart';

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
                  ),

                ),
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                  )
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable(
              colour: activeCardColor,
            )
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
                  )
                ),
                Expanded(
                  child: Reuseable(
                    colour: activeCardColor,
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

class Reuseable extends StatelessWidget {
  Reuseable({required this.colour});
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,//Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
