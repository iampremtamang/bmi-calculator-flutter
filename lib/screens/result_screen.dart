import 'package:bmi_calculator/constants/constants.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/utils/palette.dart';
import 'package:bmi_calculator/widgets/card_item.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  ResultScreen({Key? key, required this.bmiResult, required this.resultText, required this.interpretation}) : super(key: key);
  
  final _thisColor = generateMaterialColorFromColor(const Color(0xff0A0E21));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text('Your Result', style: kResultTitleStyle),
              ),
              Container(
                child: CardItem(
                  right: 30,
                  left: 30,
                  height: 450,
                  color: kInActiveCardColor,
                  gestureOnTap: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultLabelStyle),
                      Container(
                        child: Text(
                          bmiResult,
                          style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      
                      
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:30),
                        child: Center(
                          child: Text(
                            interpretation,
                            style: kLabelWhiteTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 200,
                          child: const Center(
                              child: Text(
                            'SAVE RESULT',
                            style: TextStyle(fontSize: 16),
                          )),
                          decoration: BoxDecoration(
                            color: _thisColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              CustomButton(
                buttonText: 'RE-CALCULATE YOUR BMI',
                onPress: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
              )
            ],
          ),
        ));
  }
}
