
import 'package:carpro/controller/signUpController.dart';
import 'package:get/get.dart';

class SingnUpBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(SignUpController());
    // TODO: implement dependencies
  }
}