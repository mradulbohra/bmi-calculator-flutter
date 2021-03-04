import 'package:flutter/material.dart';
import 'constants.dart';
class IconContent extends StatelessWidget {
  final IconData icon;
  final String str;
  IconContent({@required this.icon, @required this.str});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Icon(icon, size: 80.0,)
          ,),
        SizedBox(height: 15,),
        Text(
          str, style: kLabelTextStyle,
        ),
      ],
    );
  }
}