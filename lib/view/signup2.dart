import 'package:carpro/controller/LogInController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myButton.dart';
import 'package:carpro/mywidget/mytextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp2 extends StatelessWidget {
   SignUp2({super.key});
  final LoginController controller=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [

        Padding(
        padding: const EdgeInsets.only(bottom: 10 ,left: 15 , top: 90 , ),
        child: Row(
          children: [ 
          Text('*' , style: TextStyle(color: myColor.myYallow, fontSize: 30),) , 
          Image.asset('images/Line 1.png'),
          Stack(
            children: [
              Image.asset('images/Ellipse 9.png'),
               Padding(
                padding: const EdgeInsets.only(left: 8 , top: 2),
                child: Text('1' , style: TextStyle(color: myColor.myGrey,fontWeight: FontWeight.w500 , fontSize: 12 ),),
              )
            ],
          ),
          Image.asset('images/Line 2.png'),
          Stack(
            children: [
              Image.asset('images/Ellipse 8.png'),
               Padding(
                padding: const EdgeInsets.only(left: 14 , top: 4),
                child: Text('2' , style: TextStyle(color:  myColor.myGrey ,fontWeight: FontWeight.w500 , fontSize: 20 ),),
              )
            ],
          ),
          Image.asset('images/Line 3.png'),
          Image.asset('images/Vector (1).png'),
        ],),
      ) , 
      MyTextFormField(textAboveFormField: 'Bank name',) ,
      MyTextFormField(textAboveFormField: "Bank Holder's Name",) ,
      MyTextFormField(textAboveFormField: 'Account number',) ,
      MyTextFormField(textAboveFormField: 'Phone number',) , 

          Padding(
             padding:  const EdgeInsets.only(top: 20),
             child:  MaterialButton(onPressed: () { controller.GoToHome();  },
             child: const MyButton(buttonText: 'Login', buttonWidth: 150, ))
           ),

            Padding(
           padding: EdgeInsets.only(top: 30 , left: MediaQuery.of(context).size.width/4.3 , right:MediaQuery.of(context).size.width/5    , bottom: 20),
           child: MaterialButton(onPressed: () { },
           child: Text("Skip for now >" , style: TextStyle( color:myColor.myGrey, fontSize: 25 , fontFamily: 'AbyssinicaSIL'),)),
         ),

      ],),
    );
  }
}