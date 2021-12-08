import 'package:bmi_calculator/widgets/card_item.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final Color activeCardColor = const Color(0xFF1D1E33);
  final Color inActiveCardColor = const Color(0xFF111328);
  final Color buttonColor = const Color(0xFFEB1555);
  bool genderSelectedMale =  true;

  void changeCardColor(int index) {
    if(index==0) {
      print('Male tapped ${genderSelectedMale}');
      if (genderSelectedMale == false) {
        setState(() {
          genderSelectedMale = true;
        });
      } 
      // else {
      //   setState(() {
      //     genderSelectedMale = false;
      //   });
      // }

    } 
    if(index==1) {
      print('Female Tapped ${genderSelectedMale}');
      if(genderSelectedMale == true) {
        setState(() {
          genderSelectedMale = false;
        });
      } 
      // else {
      //   setState(() {
      //     genderSelectedMale=true;
      //   });
      // }
    }
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        changeCardColor(0);
                      },
                  child: CardItem(
                    left: 30,
                    right: 5,
                    color: genderSelectedMale ? inActiveCardColor : activeCardColor,
                    height: 125,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      textData: 'MALE',
                    ),
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        changeCardColor(1);
                      });
                    },
                    child: CardItem(
                      left: 5,
                      right: 30,
                      color: genderSelectedMale ? activeCardColor : inActiveCardColor,
                      height: 125,
                      cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        textData: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CardItem(
                  left: 30,
                  right: 30,
                  color: activeCardColor,
                  height: 180,
                  cardChild: Text('Hello'),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CardItem(
                  left: 30,
                  right: 5,
                  color: activeCardColor,
                  height: 145,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('MALE',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
                    ],
                  ),
                )),
                Expanded(
                    child: CardItem(
                  left: 5,
                  right: 30,
                  color: activeCardColor,
                  height: 145,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('MALE',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E98)))
                    ],
                  ),
                )),
              ],
            ),
            Container(
              color: buttonColor,
              height: 65,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 15,
              ),
              // child: Text('CALCULATE YOUR BMI'),
            )
          ],
        ),
      ),
    );
  }
}
