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
        Text(textData, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
      ],
    );
  }
}
