import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: FutureBuilder(builder: (context, snapshot) {
      return Stack(
        children: const [
          Image(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/logo.png'),
              width: 300,
            ),
          )
        ],
      );
    }));
  }
}
