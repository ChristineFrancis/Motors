import 'package:carpro/controller/splashController.dart';
import 'package:carpro/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Welcome extends StatelessWidget {
   Welcome({super.key});


  SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:GetBuilder<SplashController>(builder: (controller)=>
       SizedBox(height: Get.size.height,
        child: Column(
          children: [
           Container(
              height: Get.height/2.3,
            //height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(color:myColor.myYallow , borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(300) , bottomRight: Radius.circular(300)) ) ,
            
            ),
            Opacity (opacity: controller.fadingAnimation!.value,
             child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: Get.width/4.2 , vertical: 15),
               child: Text('Welcome...!' , 
                       style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w900, fontSize: 36 , fontFamily: 'Inter' , fontStyle: FontStyle.italic ) ),
             ),
             ),
            
            Container(
              height: Get.height/2.2,
            //height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(color:myColor.myYallow , borderRadius: const BorderRadius.only(topLeft: Radius.circular(300) , topRight: Radius.circular(300)) ) ,
            
            ),
        
            
        
        ],),
      ),),
    );
  }
}