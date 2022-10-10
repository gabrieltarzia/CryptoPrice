import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:cryptoprice/app/modules/coin/coin.repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../helper/const.helper.dart';

class CoinController extends GetxController {
  final box = GetStorage();
  CoinRepository repository = CoinRepository();

  Future<List<Coin>> coinList() async => await repository.getCoinList();

  // RxList<String> favoriteList = ['BTC', 'ETH'].obs;
  RxList<String> favoriteList = [''].obs;

  void getStoredFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? storedFavorites =
        prefs.getStringList(ConstHelper.favoriteListKey);
    favoriteList.value = storedFavorites ?? [];
  }

  @override
  void onInit() {
    getStoredFavorites();
    super.onInit();
    print('TESTE');
  }
}
