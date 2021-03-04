import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmiValue});
  final double bmiValue;

  String remark = "";
 // double bmiValue = 23.64565;
  String getRemark(double bmiValue)
  {
    if(bmiValue>=25&&bmiValue<30){
      remark = "Try Excersing A Bit More !";
      return 'Overweight';}
    else if(bmiValue>=30){
      remark = "Try Harder!";
      return 'Obese';
    }
    else if(bmiValue>=18&&bmiValue<25) {
      remark = "You\'re Perfect !";
      return 'Normal';
    }
    else if(bmiValue<18&&bmiValue>=13)
    {
      remark = "Take Healthy Diet !";
      return 'Very Thin';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       // crossAxisAlignment: CrossAxisAlignment.stretch,
       // mainAxisAlignment: MainAxisAlignment.center,
//
        children: [
          Expanded(child: Container(
          margin: EdgeInsets.only(left: 20, top: 10),
            child: Text('Your Results', style: kLabelTextStyle.copyWith(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
          ),
          ),
          Expanded(flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(getRemark(bmiValue).toUpperCase(), style: kLabelTextStyle.copyWith(fontSize: 20, color: Colors.green),),
                    Text(bmiValue.toStringAsFixed(1), style: kNumStyle.copyWith(fontSize: 80, color: Colors.white),),
                    Text(remark, style: kLabelTextStyle.copyWith(fontSize: 25, color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0, right: 18.0),
                      child: Divider(

                        thickness: 5,
                      ),
                    )
                  ],
                ),


              ),
          ),
          ],
      ),
    );

  }
}


//
// Expanded(child: Container(
// child: Text(getRemark(bmiValue), style: kLabelTextStyle.copyWith(fontSize: 20, color: Colors.green), ),
// ),),
// Expanded(child: Text(bmiValue.toStringAsFixed(2), style: kLabelTextStyle.copyWith(fontSize: 40),))
//