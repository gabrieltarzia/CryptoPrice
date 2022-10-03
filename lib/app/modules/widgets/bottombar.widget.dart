import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: _homeController.bottomBarTabIndex.value,
        backgroundColor: Theme.of(context).backgroundColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
        ],
        onTap: _homeController.changeBottomBarIndex,
      ),
    );
  }
}
