// ignore: file_names
import 'package:carpro/controller/cartController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  final int index;
  final String company;
  final String model;
  final String luanchYear;
  final double price;
  
  const MyCart( {super.key, required this.price, required this.company, required this.model, required this.luanchYear, 
  required this.index
  });
  

  @override
  Widget build(BuildContext context) {
    CartController controller = Get.put(CartController());
      RxDouble totalPrice=controller.updateTotalPrice(index); 
    
    return Obx( ()  =>
    Stack(
                children: [
                  
                  Container( height: 280,
                  //width: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 40 , vertical: 20),
                  padding: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration( border: Border.all(color: myColor.myGrey , width: 2)),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset('images/image 12.png'), 
                        MyText(name: company + model + luanchYear ),
                        //MyText(name: 'BMW XM 2023 '),
                        Text('\$$price ', style: const TextStyle(color: Colors.red , fontWeight: FontWeight.bold , fontSize: 20),),
                  
                         Row(
                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const MyText(name: 'Total payment:'),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text('\$$totalPrice', style: const TextStyle(color: Colors.red , fontWeight: FontWeight.bold , fontSize: 20),),
                          ),
                        ],) ,
                  ///'\$$totalPrice'
                        Padding(
                          padding: const EdgeInsets.only(left: 130.0),
                          child: MaterialButton(onPressed: () {},
                                           child: Container(
                                           height: 40,
                                           width: 140,
                                           decoration:  BoxDecoration(
                                           color: myColor.myYallow,
                                           borderRadius: const BorderRadius.all(Radius.circular(9)),
                                           boxShadow: [BoxShadow(
                                           color: myColor.myGrey, offset: const Offset(0, 2)  )
                                           ],),
                                           child:  Center(
                                           child: Text("Procced to payment", style: TextStyle(
                                           color: myColor.myGrey,
                                           fontSize: 15,
                                           fontWeight: FontWeight.w400
                                           ),)),),
                                           ),
                        ),
                  
                      ],),
                  ),

                  Padding(
                          padding: const EdgeInsets.only(left: 300.0),
                          child: MaterialButton(onPressed: () {
                                             controller.buttonRemove( index);
                                               },
                                           child: Container(
                                           height: 35,
                                           width: 35,
                                           decoration:  BoxDecoration(
                                           color: myColor.myYallow,
                                           borderRadius: const BorderRadius.all(Radius.circular(20)),
                                           ),
                                           child:  Center(
                                           child: Image.asset('images/Vector (8).png')
                                           ),
                                           ),
                                           ),
                        ),



                ],
              ));






  }
}