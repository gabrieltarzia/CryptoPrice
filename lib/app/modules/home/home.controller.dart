import 'package:cryptoprice/app/modules/coin/coin.controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CoinController coincontroller = Get.put(CoinController());
  var bottomBarTabIndex = 0.obs;
  final currency = '\$'.obs;

  void changeBottomBarIndex(int index) {
    bottomBarTabIndex.value = index;
  }
}
