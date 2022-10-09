import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:cryptoprice/app/modules/widgets/appbar.widget.dart';
import 'package:cryptoprice/app/modules/widgets/bottombar.widget.dart';
import 'package:cryptoprice/app/modules/widgets/card.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          appBar: customAppBar(ConstHelper.appName),
          body:
              controller.bottomBarTabIndex < 1 ? _coinList() : _favoriteList(),
          bottomNavigationBar: BottomBar());
    });
  }

  _coinList() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: controller.coincontroller.coinList(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());

              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  final List<Coin> coin = snapshot.data as List<Coin>;

                  return ListView.builder(
                      itemCount: coin.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return coin[index].symbol.toLowerCase().contains(
                                controller.searchBar.text.toLowerCase())
                            ? CryptoCard(coin: coin[index])
                            : const Center();
                      });
                }
            }
            return const Center();
          }));

  _favoriteList() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
          future: controller.coincontroller.coinList(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());

              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                }
                if (snapshot.hasData) {
                  final List<Coin> coin = snapshot.data as List<Coin>;

                  return ListView.builder(
                      itemCount: coin.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return controller.coincontroller.favoriteList
                                .contains(coin[index].symbol)
                            ? CryptoCard(coin: coin[index])
                            : const Center();
                      });
                }
            }
            return const Center();
          }));
}
