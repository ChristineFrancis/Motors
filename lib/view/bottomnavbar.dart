
import 'package:carpro/controller/bottomNavigationBarController.dart';
import 'package:carpro/main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtomNavigationBar extends StatelessWidget {
  const ButtomNavigationBar({super.key});

  
  @override
  Widget build(BuildContext context) {
    final BottomNavBarController controller=Get.put(BottomNavBarController());

    //final BottomNavBarController controller=Get.find();
    return Scaffold(
      bottomNavigationBar: Obx(()=>
          CurvedNavigationBar(
            backgroundColor: myColor.myYallow,
            color:myColor.myYallow ,
            animationDuration: const Duration(microseconds: 500),
            height: 70,
            items: <Widget>[
        Image.asset('images/Vector (5).png' , width: 50,height: 50,),
        Image.asset('images/Vector (6).png' , width: 50 , height: 50,),
        Image.asset('images/Vector (7).png' ,  width: 50 , height: 50,),
            ],
            
            index:controller.currentIndex.value,
            
            onTap: (index){
              controller.changeTabIndex(index);
        
            },
          
            ),
      ),
    body:Obx(() => controller.screen[controller.currentPage.value]),
    
    );
  }
} 