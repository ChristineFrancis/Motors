import 'package:carpro/controller/bottomNavigationBarController.dart';
import 'package:carpro/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class MyAppBar extends StatelessWidget {
  final String appbarText;
  
   MyAppBar({super.key, required this.appbarText});

  @override
  Widget build(BuildContext context) {
    final BottomNavBarController controller=Get.put(BottomNavBarController());
   return AppBar(
    leading: MaterialButton(onPressed: (){controller.changeTabIndex(1); },
        child:  Icon(Icons.arrow_back_outlined , size: 40, color:myColor.myGrey,),),

    title: Text('$appbarText' , style: TextStyle(color: myColor.myGrey,fontSize: 35, fontWeight: FontWeight.w500, ),));
  }
}