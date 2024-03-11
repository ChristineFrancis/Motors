import 'package:carpro/controller/cartController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CarDetailsController extends GetxController{

  String? bigImageCar;
  String? modelCar;
 String? luanchYearCar;
 String? companyCar;
 double? priceCar;
 String? ratingCar;
 String? engineCar;
 String? horsepowerCar;
 String? batteryCar;

  

  
  void confirmAddToCart(){
    Get.defaultDialog(
    title: '',
                                              
    content: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
    children: [Image.asset('images/image 6 (1).png'),
     const SizedBox(height: 20,), const MyText(name: 'Item added to your cart succussful') , 
     MaterialButton(onPressed: () {
       Get.back();
     },
       child: Container(height: 50,width: 120,
         color: myColor.myYallow ,child:const Center(child: MyText(name: 'Ok')) ),
     )      
    
                        ],),
                        
                               );

  }


  void setInformation(String bigImage ,
    String model,
 String luanchYear,
 String company,
 double price,
 String rating,
 String engine,
 String horsepower,
 String battery,) {

    bigImageCar= bigImage; 
    modelCar= model;
    luanchYearCar= luanchYear;
    companyCar= company;
    priceCar= price;
    ratingCar= rating;
    engineCar= engine;
    horsepowerCar= horsepower;
   batteryCar= battery ;
    update(); 
  }


  void addToCart() {
    CartController cartController =  Get.put(CartController());
    cartController.addToCart(companyCar! , modelCar! ,luanchYearCar! ,priceCar! );

    confirmAddToCart();
  }




}