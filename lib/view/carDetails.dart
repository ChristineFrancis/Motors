

import 'package:carpro/controller/carDetailsController.dart';
import 'package:carpro/mywidget/appBar.dart';
import 'package:carpro/mywidget/myButton.dart';
import 'package:carpro/mywidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({super.key});

  @override
  Widget build(BuildContext context){
    CarDetailsController controller=Get.put(CarDetailsController());
    return Scaffold(
           
   appBar:  PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),

        child: MyAppBar(appbarText: 'Car details'  ,), ),

     body: ListView(children: [
       Image.asset('${controller.bigImageCar}' ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('images/Ellipse 24.png'),
          SizedBox(width:10 ,),
          Image.asset('images/Ellipse 23.png'),
          SizedBox(width:10 ,),
          Image.asset('images/Ellipse 24.png'),
          SizedBox(width:10 ,),
          Image.asset('images/Ellipse 24.png'),
          SizedBox(width:10 ,),
          Image.asset('images/Ellipse 24.png'),
        
        ],),
         Row(
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
      
        const Padding(
          padding: EdgeInsets.only(left: 15 , right: 30),
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyText(name:'Model' ,),
              MyText(name:'Luanch year' ),
              MyText(name:'Company' ),
              MyText(name:'Price' ),
              MyText(name:'C/D RATING' ),
              MyText(name:'Car engine' ),
              MyText(name:'Horsepower' ),
              MyText(name:'Battery'),
        
          
          ],),
        ),
        Padding(
          padding: EdgeInsets.only(right: 45 , bottom: 10 ,top: 10 , ),
          child: Column( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText(name: '${controller.modelCar}' ,),
              MyText(name: '${controller.luanchYearCar}' ,),
              MyText(name: '${controller.companyCar}' ,),
              MyText(name: '${controller.priceCar}' ,),
              MyText(name: '${controller.ratingCar}' ,),
              MyText(name: '${controller.engineCar}' ,),
              MyText(name: '${controller.horsepowerCar}' ,),
              MyText(name: '${controller.batteryCar}' ,),
          
          ],),
        )
        ],) , 
        //
           Padding(
             padding: const EdgeInsets.only(bottom: 40.0),
             child: MaterialButton(onPressed: () { controller.addToCart(); },
             child: const MyButton(buttonText: '+Add to cart', buttonWidth: 170,)),
           )
     ],),

    );
  }
}
