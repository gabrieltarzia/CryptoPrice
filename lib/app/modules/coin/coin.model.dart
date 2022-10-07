class Coin {
  String name;
  String symbol;
  String price;
  String id;

  Coin(
      {required this.name,
      required this.symbol,
      required this.price,
      required this.id});

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['symbol'] = symbol;
    data['quote']['USD']['price'] = price;
    return data;
  }

  Coin.fromJson(Map<dynamic, dynamic> json)
      : id = json['id'].toString(),
        name = json['name'].toString(),
        symbol = json['symbol'].toString(),
        price = json['quote']['USD']['price'].toString();
}
