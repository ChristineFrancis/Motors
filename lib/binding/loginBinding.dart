import 'package:carpro/controller/LogInController.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
    // TODO: implement dependencies
  }
}