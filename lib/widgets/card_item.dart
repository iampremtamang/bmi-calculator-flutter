import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final double left;
  final double right;
  final Color color;
  final double height;
  final Widget cardChild;
  
  const CardItem({
    Key? key,
    required this.left,
    required this.right,
    required this.color,
    required this.height,
    required this.cardChild

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(left:left, top: 10, right: right, bottom: 10),
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: cardChild,
    );
  }
}
