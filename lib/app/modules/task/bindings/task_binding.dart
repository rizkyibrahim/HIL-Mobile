import 'package:get/get.dart';
import '../providers/task_provider.dart';
import '../controllers/task_controller.dart';

class TaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskController>(
      () => TaskController(),
    );
    Get.lazyPut<TaskProvider>(
      () => TaskProvider(),
    );
  }
}
