import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_getx/controllers/crypto_controller.dart';
import 'package:state_management_getx/models/crypto_model.dart';

//************************************************************
// HomeScreen class
// Author: Miguel Fagundez
// Date: June, 07 2022
// This screen will show some crypto data
//************************************************************
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final crypto = Get.put(CryptoController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: Obx(() => crypto.hasPushed.value
          ? ShowCryptoInState(
              myCrypto: crypto.crypto.value,
            )
          : const Center(
              child: Text('No crypto found.'),
            )),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.next_plan),
          // onPressed: () {
          //   Navigator.pushNamed(context, 'random_crypto');
          // }),
          onPressed: () {
            Get.toNamed('/random_crypto');
          }),
    );
  }
}

class ShowCryptoInState extends StatelessWidget {
  final CryptoModel myCrypto;

  const ShowCryptoInState({
    Key? key,
    required this.myCrypto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              'Crypto Name: ${myCrypto.cryptoName}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              'Crypto Slug: ${myCrypto.cryptoSlug}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            title: Text(
              'Crypto Logo: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(left: 15),
              height: 50,
              width: 50,
              child: (myCrypto.cryptoImage != null)
                  ? Image.asset(myCrypto.cryptoImage.toString())
                  : Image.asset('assets/question-mark.png'))
        ],
      ),
    );
  }
}
