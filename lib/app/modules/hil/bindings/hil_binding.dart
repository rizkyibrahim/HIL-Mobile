import 'package:get/get.dart';

import '../controllers/hil_controller.dart';

class HilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HilController>(
      () => HilController(),
    );
  }
}
