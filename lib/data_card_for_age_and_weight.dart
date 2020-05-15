import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'round_icon_button.dart';

class DataCardForAgeAndWeight extends StatelessWidget {
  final String label;
  final int value;
  final Function onPressedMinus;
  final Function onPressedPlus;

  DataCardForAgeAndWeight(
      {@required this.label,
      @required this.value,
      @required this.onPressedMinus,
      @required this.onPressedPlus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: onPressedMinus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressedPlus,
            ),
          ],
        ),
      ],
    );
  }
}
