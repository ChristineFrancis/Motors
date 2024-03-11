// main.dart
import 'package:carpro/controller/carDetailsController.dart';
import 'package:carpro/model/model.dart';
import 'package:carpro/mywidget/myListTile.dart';
import 'package:carpro/view/carDetails.dart';
import 'package:carpro/view/cart.dart';
import 'package:carpro/view/filter.dart';
import 'package:carpro/view/home.dart';
import 'package:carpro/view/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {
  
  
  RxInt currentIndex = 1.obs;
  RxInt currentPage = 1.obs;

  final List<Widget> screen= [
     Setting(),
    Home(),
    Cart(),
    CarDetails(),
    Filter(),
  ];

  void changeTabIndex(int index) {
currentPage(index);

    if(index == 3 || index==4){

    currentIndex.value = 1;
    return;

    }
    currentIndex.value = index;
  }


RxList<MyListTile> carsCategory = [
  MyListTile(smallImage: Car().audi.smallImage,carName1: Car().audi.carName1, carName2: Car().audi.carName2,price:Car().audi.price,
           bigImage: Car().audi.bigImage,battery:Car().audi.battery ,company:Car().audi.company ,engine: Car().audi.engine,horsepower: Car().audi.horsepower, model: Car().audi.model, luanchYear:Car().audi.luanchYear , rating: Car().audi.rating,),

           
  MyListTile(smallImage: Car().bmw.smallImage,carName1: Car().bmw.carName1, carName2: Car().bmw.carName2,price: Car().bmw.price, bigImage: Car().bmw.bigImage,battery:Car().bmw.battery ,company:Car().bmw.company ,engine: Car().bmw.engine,horsepower: Car().bmw.horsepower, model: Car().bmw.model, luanchYear:Car().bmw.luanchYear , rating: Car().bmw.rating,),


  MyListTile(smallImage: Car().marcedec.smallImage,carName1: Car().marcedec.carName1, carName2: Car().marcedec.carName2,price: Car().marcedec.price, bigImage: Car().marcedec.bigImage,battery:Car().marcedec.battery ,company:Car().marcedec.company ,engine: Car().marcedec.engine,horsepower: Car().marcedec.horsepower, model: Car().marcedec.model, luanchYear:Car().marcedec.luanchYear , rating: Car().marcedec.rating,),
  MyListTile(smallImage: Car().kia.smallImage,carName1: Car().kia.carName1, carName2: Car().kia.carName2,price: Car().kia.price, bigImage: Car().kia.bigImage,battery:Car().kia.battery ,company:Car().kia.company ,engine: Car().kia.engine,horsepower: Car().kia.horsepower, model: Car().kia.model, luanchYear:Car().kia.luanchYear , rating: Car().kia.rating,),
  MyListTile(smallImage: Car().chevrolet.smallImage,carName1: Car().chevrolet.carName1, carName2: Car().chevrolet.carName2,price: Car().chevrolet.price, bigImage: Car().chevrolet.bigImage,battery:Car().chevrolet.battery ,company:Car().chevrolet.company ,engine: Car().chevrolet.engine,horsepower: Car().chevrolet.horsepower, model: Car().chevrolet.model, luanchYear:Car().chevrolet.luanchYear , rating: Car().chevrolet.rating,),
  ].obs;
void removeCar(int index) { 
    carsCategory.removeAt(index);
    Get.defaultDialog(
      title: '',
       content: const Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [Icon(Icons.info_outline , color: Colors.red, size: 100,),
                        SizedBox(height: 20,),
                        Text('This will not be appear any more !')],), );}
     


  void goToFilterPage(){
    changeTabIndex(4);
  }
  

  void setSelectedCar({

    required String bigImage,
    required String model,
    required String luanchYear,
    required String company,
    required double price,
    required String rating,
    required String engine,
    required String horsepower,
    required String battery,
  }) {
    CarDetailsController carDetailsController = Get.put(CarDetailsController());
    carDetailsController.setInformation(bigImage, model, luanchYear, company, price, rating, engine, horsepower, battery);
    // Set other properties as needed
  }




}