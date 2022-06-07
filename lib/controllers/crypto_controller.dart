import 'package:get/get.dart';

import 'package:state_management_getx/models/crypto_model.dart';

//************************************************************
// CryptoController class
// Author: Miguel Fagundez
// Date: June, 07 2022
// This is the GetX controller class
//************************************************************
class CryptoController extends GetxController {
  var hasPushed = false.obs;
  var crypto =
      CryptoModel(cryptoName: '', cryptoSlug: '', cryptoImage: null).obs;
  var randomNumber = 0.obs;
  final List<CryptoModel> _listCryptos = initList();

  void changeCrypto(int position) {
    if (!hasPushed.value) {
      hasPushed.value = true;
    }
    crypto.value = _listCryptos[position];
    randomNumber.value = position;
  }
}

// Initialization Crypto List
List<CryptoModel> initList() {
  return [
    CryptoModel(
        cryptoName: 'Bitcoin',
        cryptoSlug: 'BTC',
        cryptoImage: 'assets/bitcoin.png'),
    CryptoModel(
        cryptoName: 'Ethereum',
        cryptoSlug: 'ETH',
        cryptoImage: 'assets/ethereum.png'),
    CryptoModel(
        cryptoName: 'Cardano',
        cryptoSlug: 'ADA',
        cryptoImage: 'assets/cardano.png'),
    CryptoModel(
        cryptoName: 'Coti', cryptoSlug: 'COTI', cryptoImage: 'assets/coti.png'),
    CryptoModel(
        cryptoName: 'Crypto.com',
        cryptoSlug: 'CRO',
        cryptoImage: 'assets/crypto-com.png'),
    CryptoModel(
        cryptoName: 'Decentraland',
        cryptoSlug: 'MANA',
        cryptoImage: 'assets/decentraland.png'),
    CryptoModel(
        cryptoName: 'Dogecoin',
        cryptoSlug: 'DOGE',
        cryptoImage: 'assets/dogecoin.png'),
    CryptoModel(
        cryptoName: 'Fantom',
        cryptoSlug: 'FTM',
        cryptoImage: 'assets/fantom.png'),
    CryptoModel(
        cryptoName: 'Shiba-Inu',
        cryptoSlug: 'SHIB',
        cryptoImage: 'assets/shiba-inu.png'),
    CryptoModel(
        cryptoName: 'Solana',
        cryptoSlug: 'SOL',
        cryptoImage: 'assets/solana.png'),
    CryptoModel(
        cryptoName: 'Tether',
        cryptoSlug: 'USDT',
        cryptoImage: 'assets/tether.png'),
  ];
}
