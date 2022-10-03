import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:flutter/material.dart';
import '../../helper/const.helper.dart';
import 'package:get/get.dart';

class CryptoCard extends StatelessWidget {
  CryptoCard({Key? key, required this.coin}) : super(key: key);
  Coin coin;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Card(
          child: ListTile(
            tileColor: coin.favorite.value
                ? ConstHelper.favoriteColor
                : Theme.of(context).listTileTheme.tileColor,
            leading: Image.network(coin.imageUrl,
                loadingBuilder: (context, child, loadingProgress) =>
                    loadingProgress == null
                        ? child
                        : const CircularProgressIndicator()),
            title: Text(coin.code),
            subtitle: Text(coin.name),
            trailing: Text('\$ ${coin.price.toString()}'),
            onLongPress: () {
              coin.favorite.value = !coin.favorite.value;
            },
          ),
        ));
  }
}
