import 'package:get/get.dart';

class TaskProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'http://127.0.0.1:8000/api/task-list';
  }

  Future loadTasks() async {
    var response = await get(httpClient.baseUrl!);
    return response.body;
  }
}
