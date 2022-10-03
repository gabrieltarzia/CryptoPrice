import 'package:cryptoprice/app/modules/coin/coin.model.dart';
import 'package:get/get.dart';

class CoinController {
  List coinList = [
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/btc.png',
        name: 'Bitcoin',
        code: 'BTC',
        price: 35000,
        favorite: true.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/eth.png',
        name: 'Ethereum',
        code: 'ETH',
        price: 1700,
        favorite: false.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/ada.png',
        name: 'Cardano',
        code: 'ADA',
        price: 1700,
        favorite: true.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/ark.png',
        name: 'Ark',
        code: 'AVX',
        price: 1700,
        favorite: false.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/atom.png',
        name: 'Atom',
        code: 'ATOM',
        price: 1700,
        favorite: false.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/chat.png',
        name: 'Chat Coin',
        code: 'CHAT',
        price: 1700,
        favorite: false.obs),
    Coin(
        imageUrl:
            'https://cdn.jsdelivr.net/gh/atomiclabs/cryptocurrency-icons@1a63530be6e374711a8554f31b17e4cb92c25fa5/128/color/avax.png',
        name: 'Avalanche',
        code: 'AVAX',
        price: 1700,
        favorite: true.obs),
  ];
}
