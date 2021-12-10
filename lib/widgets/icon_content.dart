import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String textData;
  const IconContent({
    Key? key,
    required this.icon,
    required this.textData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(textData, style: kLabelTextStyle)
      ],
    );
  }
}
