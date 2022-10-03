import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    HomeController homeController = Get.put(HomeController());
  }
}
