import 'package:get/get.dart';

class Coin {
  String imageUrl;
  String name;
  String code;
  int price;
  RxBool favorite;

  Coin(
      {required this.imageUrl,
      required this.name,
      required this.code,
      required this.price,
      required this.favorite});
}
