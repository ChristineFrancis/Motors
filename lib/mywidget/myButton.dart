import 'package:carpro/main.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final double buttonWidth;
  const MyButton({super.key, required this.buttonText, required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 52,
    width: buttonWidth,
    decoration:  BoxDecoration(
    color: myColor.myYallow,
    borderRadius: const BorderRadius.all(Radius.circular(9)),
    boxShadow: [BoxShadow(
    color: myColor.myGrey, offset: const Offset(0, 2)  )
    ],),
    child:  Center(
    child: Text(buttonText, style: TextStyle(
    color: myColor.myGrey,
    fontSize: 25,
    fontWeight: FontWeight.w400
    ),)),);
  }
}