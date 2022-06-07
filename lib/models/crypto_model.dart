//************************************************************
// CryptoModel class
// Author: Miguel Fagundez
// Date: Jun, 07 2022
// This is a basic class for handling our crypto model
//************************************************************
class CryptoModel {
  String cryptoName;
  String cryptoSlug;
  String? cryptoImage;

  CryptoModel(
      {required this.cryptoName, required this.cryptoSlug, this.cryptoImage});
}
