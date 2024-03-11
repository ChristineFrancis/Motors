import 'package:carpro/controller/signUpController.dart';
import 'package:carpro/mywidget/myButton.dart';
import 'package:carpro/mywidget/mytextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignUp1 extends StatelessWidget {
 SignUp1({super.key});
  final SignUpController controller=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/9  , vertical: 20),
          child: const Text('Create your account' , 
                     style: TextStyle(color: Color(0xff6A6A6A), fontWeight: FontWeight.w600 , fontSize: 30 ) ),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 15),
        child: Row(
          children: [ 
          Text('*' , style: TextStyle(color: Color(0xffF4CE26), fontSize: 30),) , 
          Image.asset('images/Line 1.png'),
          Stack(
            children: [
              Image.asset('images/Ellipse 8.png'),
              const Padding(
                padding: EdgeInsets.only(left: 14 , top: 4),
                child: Text('1' , style: TextStyle(color: Color(0xff6A6A6A) ,fontWeight: FontWeight.w500 , fontSize: 20 ),),
              )
            ],
          ),
          Image.asset('images/Line 2.png'),
          Stack(
            children: [
              Image.asset('images/Ellipse 9.png'),
              const Padding(
                padding: EdgeInsets.only(left: 8 , top: 2),
                child: Text('2' , style: TextStyle(color: Color(0xff6A6A6A) ,fontWeight: FontWeight.w500 , fontSize: 12 ),),
              )
            ],
          ),
          Image.asset('images/Line 3.png'),
          Image.asset('images/Vector (1).png'),
        ],),
      ) ,
      MyTextFormField(textAboveFormField:'Full name*' ,) ,
      MyTextFormField(textAboveFormField:'Birthday' ,suffix: Image.asset('images/Vector (2).png', )),
      MyTextFormField(textAboveFormField: 'Password*',suffix:Image.asset('images/Vector.png') ,),
      MyTextFormField( textAboveFormField:'Confirm password*' , suffix: Image.asset('images/Vector.png') ,),
           Padding(
             padding: const EdgeInsets.only(top: 60),
             child:  MaterialButton(onPressed: () { controller.GoToPage(); },
             child: MyButton(buttonText: 'Next', buttonWidth: 150,))
           ),

      ],),
    );
  }
}