import 'package:cryptoprice/app/helper/const.helper.dart';
import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:get/get_connect/connect.dart';

class CoinRepository extends GetConnect {
  Future<List<Coin>> getCoinList() async {
    List<Coin> coinList = [];

    var path =
        ConstHelper.coinMarketCapApi + '/v1/cryptocurrency/listings/latest?';
    var apiKey = 'CMC_PRO_API_KEY=' + ConstHelper.apiKey;

    final response = await get(path + apiKey);

    final coins = response.body['data'];

    for (Map coin in coins) {
      Coin c = Coin.fromJson(coin);
      coinList.add(c);
    }

    return coinList;
  }
}
