import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:cryptoprice/app/modules/home/home.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoCard extends StatelessWidget {
  CryptoCard({Key? key, required this.coin}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  Coin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Theme.of(context).listTileTheme.tileColor,
      leading: Image.network(ConstHelper.iconUrl + coin.id + '.png',
          loadingBuilder: (context, child, loadingProgress) =>
              loadingProgress == null
                  ? child
                  : const CircularProgressIndicator()),
      title: Text(coin.name),
      subtitle: Text(coin.symbol),
      trailing: Text('\$ ${coin.price.toString()}'),
      onLongPress: () {},
    );
  }
}
