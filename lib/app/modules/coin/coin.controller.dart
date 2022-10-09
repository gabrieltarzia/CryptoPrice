import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:cryptoprice/app/modules/coin/coin.repository.dart';
import 'package:get/get.dart';

class CoinController extends GetxController {
  CoinRepository repository = CoinRepository();

  Future<List<Coin>> coinList() async => await repository.getCoinList();
  RxList<String> favoriteList = ['BTC', 'ETH', 'USDT', 'LTC'].obs;
}
