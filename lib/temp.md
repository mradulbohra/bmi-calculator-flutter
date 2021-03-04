import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
      children: [
        Row(
          children: [
            Expanded(child: Container(
       //       child: Text('hi'),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF0E0A21),
                borderRadius : BorderRadius.circular(10),
              ),
            ),
            )    ,

            Expanded(child: Container(
       //       child: Text('hi'),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF0E0A21),
                borderRadius : BorderRadius.circular(10),
              ),
            ),
            )    ,

          ],
        ),
        SizedBox(width: 15),

        Row(
          children: [
            Expanded(child: Container(
              //child: Text('hi'),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF0E0A21),
                borderRadius : BorderRadius.circular(10),
              ),
            ),
            )    ,

            Expanded(child: Container(
          //    child: Text('hi'),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF0E0A21),
                borderRadius : BorderRadius.circular(10),
              ),
            ),
            )    ,

          ],
        ),


      ],

      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({ @required this.colour});

  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF0E0A21),
        borderRadius : BorderRadius.circular(10),
      ),
    );
  }
}
