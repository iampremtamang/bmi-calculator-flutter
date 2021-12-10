import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final onPress;
  const CustomButton({
    Key? key, required this.buttonText, required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kButtonColor,
        height: 70,
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 15,
        ),
        child: Center(
            child: Text(
          buttonText,
          style: kButtonTextStyle,
        )),
        // child: Text('CALCULATE YOUR BMI'),
      ),
    );
  }
}
