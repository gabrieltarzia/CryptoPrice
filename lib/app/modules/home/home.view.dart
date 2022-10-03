import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:cryptoprice/app/modules/widgets/appbar.widget.dart';
import 'package:cryptoprice/app/modules/widgets/bottombar.widget.dart';
import 'package:cryptoprice/app/modules/widgets/card.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(ConstHelper.appName),
        body: Stack(children: [
          Obx(() => _controller.bottomBarTabIndex < 1
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: _controller.coincontroller.coinList.length,
                      itemBuilder: (context, index) {
                        return CryptoCard(
                            coin: _controller.coincontroller.coinList[index]);
                      }),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      itemCount: _controller.coincontroller.coinList.length,
                      itemBuilder: (context, index) {
                        if (_controller
                            .coincontroller.coinList[index].favorite.value) {
                          return CryptoCard(
                              coin: _controller.coincontroller.coinList[index]);
                        } else {
                          return Container();
                        }
                      }),
                ))
        ]),
        bottomNavigationBar: BottomBar());
  }
}
