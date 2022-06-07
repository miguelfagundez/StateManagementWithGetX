import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'package:state_management_getx/screens/home_screen.dart';
import 'package:state_management_getx/screens/random_screen.dart';

void main() {
  runApp(const MyApp());
}

//************************************************************
// MyApp class
// Author: Miguel Fagundez
// Date: May, 27 2022
// MyApp
//************************************************************
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto State Managment - GetX',
      initialRoute: 'home_crypto',
      // routes: {
      //   'home_crypto': (_) => const HomeScreen(),
      //   'random_crypto': (_) => const RandomScreen()
      // },
      getPages: [
        GetPage(name: '/home_crypto', page: () => const HomeScreen()),
        GetPage(name: '/random_crypto', page: () => const RandomScreen()),
      ],
    );
  }
}
