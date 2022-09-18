import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                width: double.infinity,
                child: Text(
                  'Sigit Prayoga',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(1, 98, 153, 1),
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              child: Row(
                children: [
                  Text(
                    '6618819',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(1, 98, 153, 1),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(209, 214, 217, 1),
                    radius: 3,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    'TLC-7',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(239, 173, 66, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
