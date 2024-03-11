import 'package:carpro/controller/carDetailsController.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class CarDetailsBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(CarDetailsController());
    // TODO: implement dependencies
  }
}