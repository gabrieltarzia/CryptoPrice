import 'package:cryptoprice/app/modules/coin/coin.controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  CoinController coincontroller = CoinController();
  var bottomBarTabIndex = 0.obs;
  TextEditingController searchBar = TextEditingController();

  void changeBottomBarIndex(int index) {
    bottomBarTabIndex.value = index;
  }
}
