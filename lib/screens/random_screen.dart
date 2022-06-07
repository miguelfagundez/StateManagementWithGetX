import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'dart:math';

import 'package:state_management_getx/controllers/crypto_controller.dart';

//************************************************************
// RandomScreen class
// Author: Miguel Fagundez
// Date: June, 07 2022
// This is the second screen of the app
//************************************************************
class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Screen'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: const RandomScreenBody(),
    );
  }
}

class RandomScreenBody extends StatelessWidget {
  const RandomScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myCrypto = Get.find<CryptoController>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text('Take a random crypto & Go back to HomeScreen'),
        ),
        const SizedBox(
          height: 20,
        ),
        const CryptoButton(),
        const SizedBox(
          height: 50,
        ),
        Obx(() => Text('Winning Crypto: ${myCrypto.crypto.value.cryptoName}')),
        Obx(() => Text('Random is: ${myCrypto.randomNumber}')),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
              'If the random number does not change it is because the value was repeated. Push again!'),
        ),
        const Text('')
      ],
    );
  }
}

class CryptoButton extends StatelessWidget {
  const CryptoButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final crypto = Get.find<CryptoController>();

    return Center(
        child: SizedBox(
      height: 80,
      child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            final num = random.nextInt(11);
            crypto.changeCrypto(num);
          },
          child: const Text(
            'Random number',
            style: TextStyle(color: Colors.white),
          )),
    ));
  }
}
