import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/helper/theme.helper.dart';
import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CryptoCard extends StatelessWidget {
  CryptoCard({Key? key, required this.coin}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  Coin coin;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListTile(
          tileColor:
              homeController.coincontroller.favoriteList.contains(coin.symbol)
                  ? ThemeHelper.favoriteColor
                  : Theme.of(context).listTileTheme.tileColor,
          leading: Image.network(ConstHelper.iconUrl + coin.id + '.png',
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress == null
                      ? child
                      : const CircularProgressIndicator()),
          title: Text(coin.name),
          subtitle: Text(coin.symbol),
          trailing: Text('\$ ${coin.price.toString()}'),
          onLongPress: () {
            _addToFavorite(coin);
            _saveList();
          },
        ));
  }

  _addToFavorite(Coin coin) =>
      homeController.coincontroller.favoriteList.contains(coin.symbol)
          ? homeController.coincontroller.favoriteList.remove(coin.symbol)
          : homeController.coincontroller.favoriteList.add(coin.symbol);

  void _saveList() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(ConstHelper.favoriteListKey,
        homeController.coincontroller.favoriteList);
  }
}
