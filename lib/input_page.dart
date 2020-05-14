import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const borderContainerHeight = 80.0;
const activeCardColor = Color(0xff1d1f33);
const inactiveCardColor = Color(0xff101427);
const borderContainerColor = Color(0xffea1556);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleActiveColor = inactiveCardColor;
  Color femaleActiveColor = inactiveCardColor;

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      if (maleActiveColor == inactiveCardColor) {
        maleActiveColor = activeCardColor;
        femaleActiveColor = inactiveCardColor;
      } else
        maleActiveColor = inactiveCardColor;
    } else {
      if (femaleActiveColor == inactiveCardColor) {
        femaleActiveColor = activeCardColor;
        maleActiveColor = inactiveCardColor;
      } else
        femaleActiveColor = inactiveCardColor;
    }
  }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReusableCard(
                        colour: maleActiveColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleActiveColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: borderContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: borderContainerHeight,
            ),
          ],
        ));
  }
}
