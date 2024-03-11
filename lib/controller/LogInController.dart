import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController{


  void GoToHome(){
    Get.toNamed('/Nav');
  }

  void GoToSignup(){
    Get.toNamed('/SignUp1');
  }
}