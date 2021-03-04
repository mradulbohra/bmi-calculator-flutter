import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {
  ResultPage(double bmiValue);
 // final double result;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  String remark = "Normal";

  get bmiValue => bmiValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: SafeArea(
        child: Container(
          //margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: kActiveCardColour,
        //    borderRadius: BorderRadius.circular(15),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
//            verticalDirection: VerticalDirection.down,
            children: [
              Text(bmiValue.toStringAsFixed(1), style: kNumStyle,),
              Text(remark, style: kLabelTextStyle.copyWith(fontSize: 30),)

            ],
          ),
        ),
      ),
      ),
    );
  }
}
