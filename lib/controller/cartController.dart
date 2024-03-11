
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myCart.dart';
import 'package:carpro/mywidget/myText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  RxList <MyCart> carts=<MyCart>[].obs;

 
  int currentIndex=0;

  RxDouble updateTotalPrice(int index) {
    //update();
     double totalPrice=0.0;
     for(int i=0 ; i<=index ; i++){
    //for(var item in carts) {print('start for');
      totalPrice+=carts[i].price;
      print('total price $totalPrice');
    }
    print('before update');
    update();
    //print('after update');
    return totalPrice.obs;
  }



  void addToCart( String company, String model,String luanchYear,double price  ){
    
    carts.add(MyCart(price: price , company: company, model: model, luanchYear: luanchYear, 
    index: currentIndex,
    ));
    //updateTotalPrice();
     print('after add');
    
  }
  void buttonRemove(int index){

     Get.defaultDialog(
             title: '',
                                              
             content: const Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Icon(Icons.info_outline , color: Colors.red, size: 170,),
                        SizedBox(height: 20,), MyText(name: 'Are you sure to cancel your order?')

                        ],),
                        
              cancel: MaterialButton(
                          onPressed: () { Get.back(); },
                          child: Container(height: 50,width: 100,//margin: const EdgeInsets.symmetric(horizontal: 12),
                             decoration: BoxDecoration( border: Border.all(color: myColor.myYallow , width: 2)),
                                              child:const Center(child: MyText(name: 'No')) ,),
                        ),
                                          

               confirm: MaterialButton(
                           onPressed: () { onRemove(index); Get.back(); updateTotalPrice(index);},
                           child: Container(height: 50,width: 100,//margin: EdgeInsets.symmetric(horizontal: 12),
                            color: myColor.myYallow ,child:const Center(child: MyText(name: 'Yes')) ),
                         )   ,
                        
                               );
                          }



  void onRemove(int index){

    if (index >= 0 && index < carts.length) {
      carts.removeAt(index);
      updateTotalPrice(index);}
  
  }
}