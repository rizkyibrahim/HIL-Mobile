import 'package:get/get.dart';
import '../providers/task_provider.dart';

class TaskController extends GetxController {
  TaskProvider taskProvider = Get.find<TaskProvider>();
  var taskList = [].obs;
  var loading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadTask();
  }

  loadTask() async {
    loading(true);
    taskList(await taskProvider.loadTasks());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
