import 'package:carpro/main.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final textAboveFormField;
  final suffix;


   MyTextFormField( {super.key, this.textAboveFormField, this.suffix});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            '$textAboveFormField',
            style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w400, fontSize: 17),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: suffix,
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2, color:  myColor.myGrey)),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:  myColor.myGrey)),
            ),
          ),
        ),
      ],
    );
  }
}