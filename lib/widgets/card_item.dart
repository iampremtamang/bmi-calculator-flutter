import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final double left;
  final double right;
  final Color color;
  final double height;
  final Widget cardChild;
  final gestureOnTap;
  
  const CardItem({
    Key? key,
    required this.left,
    required this.right,
    required this.color,
    required this.height,
    required this.cardChild, 
    required this.gestureOnTap

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureOnTap,
      child: Container(
        margin:
            EdgeInsets.only(left:left, top: 15, right: right, bottom: 15),
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: cardChild,
      ),
    );
  }
}
