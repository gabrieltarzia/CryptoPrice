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
    return Scaffold(
        appBar: customAppBar(ConstHelper.appName),
        body: Padding(
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
                              return CryptoCard(coin: coin[index]);
                            });
                      }
                  }
                  return const Center();
                })),
        bottomNavigationBar: BottomBar());
  }
}
