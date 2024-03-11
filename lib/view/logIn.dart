import 'package:carpro/controller/LogInController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myButton.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LogIn extends StatelessWidget {
   LogIn({super.key});
 final LoginController controller=Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Container(
            height: Get.height/3,
          //height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(color:myColor.myYallow , borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(250) , bottomRight: Radius.circular(250)) ) ,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Text('Ebay motors' , 
                   style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w900, fontSize: 36 , fontFamily: 'Inter' , fontStyle: FontStyle.italic ) ),
          
                   const SizedBox(height: 30,),
          
                   Text('Driving you to your ' , 
                   style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w700 , fontSize: 30 ,  fontFamily: 'Inter' , fontStyle: FontStyle.italic) ),
          
                    Text('dream car!' , 
                   style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w700 , fontSize: 30 , fontFamily: 'Inter' , fontStyle: FontStyle.italic) ),
            ],),
          ),

           Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Email' , style: TextStyle(color:myColor.myGrey,fontWeight: FontWeight.w400 , fontSize: 17),),
          ) , 
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 25),
            child: TextField( 
              decoration: InputDecoration(
               // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red  ) ), 
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2 , color: myColor.myGrey )),
                focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: myColor.myGrey))

              ),
            ),
          ) ,
          
           Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('Password' , style: TextStyle(color:myColor.myGrey ,fontWeight: FontWeight.w400 , fontSize: 17),),
          ) , 
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 25),
            child: TextField( 
              decoration: InputDecoration( suffixIcon: Image.asset('images/Vector.png'),
               // border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red  ) ), 
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2 , color: myColor.myGrey )),
                focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: myColor.myGrey))
              ),
            ),
          ) ,

     MaterialButton(onPressed: () { controller.GoToHome(); },
     child: const MyButton(buttonText: 'Log in', buttonWidth: 150,)),
         
          Padding(
           padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 90),
           child: Text('Forget password?' , style: TextStyle( color:myColor.myYallow , fontSize: 25 ),),
         ),
         
          Padding(
           padding: const EdgeInsets.only(top: 20 , left: 50),
           child: Text("don't you have account?" , style: TextStyle( color: myColor.myGrey, fontSize: 25 , fontFamily: 'AbyssinicaSIL'),),
         ),
         MaterialButton(onPressed: (){controller.GoToSignup();},
         child:  Padding(
           padding: const EdgeInsets.symmetric( horizontal: 90),
           child: Text('Sign up' , style: TextStyle( color:myColor.myYallow , fontSize: 25 , fontWeight: FontWeight.w400),),
         ),
         )

        ],
      ),
    );
  }
}