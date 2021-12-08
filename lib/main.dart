import 'package:bmi_calculator/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  final _thisColor = generateMaterialColorFromColor(const Color(0xff0A0E21));

  BMICalculator({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: _thisColor,
        scaffoldBackgroundColor: _thisColor,
        accentColor: Colors.purple,
        primaryColor: _thisColor,
        fontFamily: "Monteserrat",
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home: InputPage()
    );
  }
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Text('Hi There'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),

    );
  }
}
