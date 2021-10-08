import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFF090C21),
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
                  child: Reuseable(),
                ),
                Expanded(
                  child: Reuseable()
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable()
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuseable()
                ),
                Expanded(
                  child: Reuseable()
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  const Reuseable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
