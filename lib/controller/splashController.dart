// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with GetSingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;


  @override
  void onInit() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4) , (){Get.offNamed('/LogIn');});

    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(animationController!);
    fadingAnimation?.addListener(() {
      if(animationController!.isCompleted) {animationController!.repeat(reverse: true );}
      update() ;
    });

    animationController?.forward();

    
    super.onInit();
  }

  @override
  void onClose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual ,overlays: SystemUiOverlay.values );
    
    super.onClose();
  }
}