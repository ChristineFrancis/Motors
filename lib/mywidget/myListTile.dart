import 'package:carpro/controller/bottomNavigationBarController.dart';
import 'package:carpro/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyListTile extends StatelessWidget {
final String carName1;
final String carName2;
final String model;
final String luanchYear;
final String company;
final double price;
final String rating;
final String engine;
final String horsepower;
final String battery;
final String bigImage;
final String smallImage;

  const MyListTile({super.key, required this.carName1, required this.carName2, required this.model, required this.luanchYear, required this.company, required this.price, required this.rating, required this.engine, required this.horsepower, required this.battery, required this.bigImage, required this.smallImage});


   //final HomeController controller1=Get.find();
   

  @override
  Widget build(BuildContext context) {
  final BottomNavBarController controller=Get.put(BottomNavBarController());


    return MaterialButton(
      onPressed: (){
      controller. changeTabIndex(3);  

      controller.setSelectedCar(bigImage: bigImage ,model: model,luanchYear: luanchYear,company: company,price: price,rating: rating,engine: engine,horsepower: horsepower, battery: battery , 
          
        );
      },
      child: Container( height: 70,margin: const EdgeInsets.only(left: 8 , right: 10 , top:30 , bottom: 10 ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(17) , border: Border.all(color: myColor.myGrey , width: 2)),
    
        child: 
            
             Row(
               children: [
                 Image.asset(smallImage),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  //crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(carName1 ,style:   TextStyle(color: myColor.myGrey, fontSize: 15 , fontWeight: FontWeight.w400),),
                     Text(carName2 ,style:   TextStyle(color: myColor.myGrey, fontSize: 15 , fontWeight: FontWeight.w400), ),
                     Text('\$${price}',style:   TextStyle(color: myColor.myGrey , fontSize: 15 , fontWeight: FontWeight.w400), ),
        
                   ],
                 )
               ],
             ) , 
        
        ),
      
    );
  }
}