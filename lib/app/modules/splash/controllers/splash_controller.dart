import 'dart:async';
import 'package:get/get.dart';
import 'package:hil_mobile/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    await Future.delayed(Duration(seconds: 2));
    await Get.offAndToNamed(Routes.HOME);
  }
}
