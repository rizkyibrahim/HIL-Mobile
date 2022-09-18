import 'package:get/get.dart';
import 'package:hil_mobile/app/modules/home/controllers/home_controller.dart';
import 'package:hil_mobile/app/modules/setting/controllers/setting_controller.dart';
import 'package:hil_mobile/app/modules/task/controllers/task_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<TaskController>(() => TaskController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
