import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/utils/gender_enum.dart';
import 'package:bmi_calculator/widgets/card_item.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool genderSelectedMale = true;
  int height = 180;
  int weight = 50;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: CardItem(
                    gestureOnTap: () {
                      setState(() {
                        changeCardColor(GenderType.male);
                      });
                    },
                    left: 30,
                    right: 10,
                    color: genderSelectedMale
                        ? kInActiveCardColor
                        : kActiveCardColor,
                    height: 140,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.mars,
                      textData: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardItem(
                    gestureOnTap: () {
                      setState(() {
                        changeCardColor(GenderType.female);
                      });
                    },
                    left: 10,
                    right: 30,
                    color: genderSelectedMale
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    height: 140,
                    cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus,
                      textData: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CardItem(
                  gestureOnTap: () {},
                  left: 30,
                  right: 30,
                  color: kActiveCardColor,
                  height: 230,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kNumberTextStyle),
                          Text('cm', style: kLabelTextStyle)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: kSliderInactiveColor,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0,
                          ),
                          thumbColor: kButtonColor,
                          overlayColor: kSliderOverlayColor,
                        ),
                        child: Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 250.0,
                            // thumbColor: kButtonColor,
                            // activeColor: Colors.white,
                            // inactiveColor: kSliderInactiveColor,

                            onChanged: (value) {
                              setState(() {
                                height = value.toInt();
                              });
                            }),
                      )
                    ],
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: CardItem(
                  gestureOnTap: () {},
                  left: 30,
                  right: 10,
                  color: kActiveCardColor,
                  height: 190,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: kLabelTextStyle),
                      Text(weight.toString(), style: kNumberTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight += 1;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight -= 1;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: CardItem(
                  gestureOnTap: () {},
                  left: 10,
                  right: 30,
                  color: kActiveCardColor,
                  height: 190,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('AGE', style: kLabelTextStyle),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age += 1;
                                });
                              }),
                          const SizedBox(
                            width: 20,
                          ),
                          RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  age -= 1;
                                });
                              }),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/result');
              },

              child: Container(
                color: kButtonColor,
                height: 65,
                width: double.infinity,
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                child: Center(child: Text('CALCULATE YOUR BMI', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                // child: Text('CALCULATE YOUR BMI'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void changeCardColor(GenderType genderType) {
    // male card pressed
    if (genderType == GenderType.male) {
      if (genderSelectedMale == false) {
        setState(() {
          genderSelectedMale = true;
        });
      }
    }

    //female card pressed
    if (genderType == GenderType.female) {
      if (genderSelectedMale == true) {
        setState(() {
          genderSelectedMale = false;
        });
      }
    }
  }
}
