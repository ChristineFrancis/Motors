import 'package:carpro/controller/cartController.dart';
import 'package:carpro/main.dart';
import 'package:carpro/mywidget/myCart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
     CartController controller = Get.put(CartController());
    return Scaffold(
    body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Padding(
                padding: const EdgeInsets.only(top: 35 , left: 30),
                child: Text('Cart' , 
                     style: TextStyle(color: myColor.myGrey, fontWeight: FontWeight.w900, fontSize: 36 , fontFamily: 'Inter'  ) ),
              ),

              Expanded(child: Obx(() => ListView.builder(itemCount: controller.carts.length,
               itemBuilder:(context, index) {
                controller.currentIndex=index;
                
                return Column(

                children: [MyCart(
                  index: index,
                  price: controller.carts[index].price, 
                 // totalPrice: controller.carts[index].totalPrice,
                   company: controller.carts[index].company,
                    model: controller.carts[index].model,
                     luanchYear: controller.carts[index].luanchYear ,)],
               );}, )))

    ],)
    );
  }
}


