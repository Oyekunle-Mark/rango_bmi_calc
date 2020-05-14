import 'package:flutter/material.dart';

const borderContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xff1d1f33),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Color(0xff1d1f33),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xffea1556),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: borderContainerHeight,
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({@required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
