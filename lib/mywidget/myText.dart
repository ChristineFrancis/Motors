import 'package:carpro/main.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String name;
  const MyText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only( top: 10 , bottom: 10  ),
            child: Text(name , style:  TextStyle(color: myColor.myGrey , fontSize: 20 , fontWeight: FontWeight.w400 ) ,),
          );
  }
}