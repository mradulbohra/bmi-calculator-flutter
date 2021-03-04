import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
import 'constants.dart';
import 'results_page.dart';
// bool male = false, female = false;
enum Gender {male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender userSelected;
  int height = 170;
  int age = 20;
  int weight = 70;
  double bmiValue;
  void result()
  {
    double temp = height/100;
    double numerator = weight.toDouble();
    bmiValue =  (numerator/(temp*temp));

  }

  void increase(int key)
  {


    if(key==1)
      weight++;
    else age++;


    }
  void decrease(int key)
  {


    if(key==1){
      if(weight>0)
        weight--;
    }
    else {
      if(age>0)
        age--;
    }


    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Expanded(
         //   flex:2,

            child: Row(
              children: <Widget>[
                Expanded(

                    child: ReusableCard(colour: userSelected==Gender.male?kActiveCardColour: kInactiveCardColour,
                      gender: (){
                      setState(() {
                        userSelected = Gender.male;
                      });
                      },
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, str: 'Male'),
                    ),

                ),
              //  SizedBox(width: 15,),
                Expanded(
                  child: ReusableCard(colour: userSelected==Gender.female?kActiveCardColour:kInactiveCardColour,
                    gender: (){
                    setState(() {
                      userSelected = Gender.female;
                    });
                    },
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, str: 'Female'),
                  ),

                ),

              ],
            ),
          ),
     //     SizedBox(height: 15,),

          Expanded(
        //    flex:2,

            child: ReusableCard(colour: kBGcolor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Height', style: kLabelTextStyle, ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
//                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(height.toString(), style: kNumStyle),
                    Text('cm', style: kLabelTextStyle, ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Color(0xFFEB1555),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.00),
                    overlayColor:  Color(0x29EB1555),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min : 120.0,
                    max: 220.0,
                    //label - here we dont need any label as the output changed will be reflected instantaneouly
                    onChanged: (double value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
        //onChanged: heightChange,
//mouseCursor: MouseCursor.uncontrolled,
//                  divisions: 3 ,
  //label: 'height',
                 ),
                )
              ],
            ),),


          ),
     //     SizedBox(height: 15,),
          Expanded(
       //     flex:2,

            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colour: kBGcolor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Weight', style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(weight.toString(), style: kNumStyle,),
                          SizedBox(width: 3.0,),

                          Text('kg', style: kLabelTextStyle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(icon:
                          Icon(Icons.remove_circle_outlined, color: Color(0xFFEB1555),size: 45.0 ,)
                              , onPressed: (){
                            setState(() {

                            decrease(1);

                            });
                               //     print(weight);
                              }
                          ),
                          SizedBox(width: 20,),
                          IconButton(icon: Icon(Icons.add_circle_outlined, color: Color(0xFFEB1555),size: 45.0 ,)
                              , onPressed: (){
                            setState(() {

                            increase(1);

                            });
                            }
                              )
                        ],
                      )

                    ],
                  ),
                  ),

                ),
         //       SizedBox(width: 15,),

                Expanded(

                  child: ReusableCard(colour: kBGcolor,
             //       gender: null,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Age', style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(age.toString(), style: kNumStyle,),
                            SizedBox(width: 3.0,),

                            Text('yrs', style: kLabelTextStyle),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            IconButton(icon:
                            Icon(Icons.remove_circle_outlined, color: Color(0xFFEB1555),size: 45.0 ,)
                                , onPressed: (){
                              setState(() {
                                decrease(2);

                              });
                                }),
                            SizedBox(width: 20,),
                            IconButton(icon: Icon(Icons.add_circle_outlined, color: Color(0xFFEB1555),size: 45.0 ,)
                                , onPressed: (){
                              setState(() {
                                increase(2);

                              });
                                })
                          ],
                        )

                      ],
                    ),
                  ),

                ),

              ],
            ),
          ),

        GestureDetector(
    onTap: (){
      result();
    Navigator.push(context, MaterialPageRoute(builder: (context){
    return ResultsPage(bmiValue: bmiValue,);

    },
      ),
    );
    },

    child:Container(
      child: Center(child: Text('Calculate', style: TextStyle(fontSize: 24),)),

          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color(0xFFEB1555),
          ),
          //width: double.infinity,
          height: 60.0,
        ),
        ),
        ],
      ),
    );
  }
}
