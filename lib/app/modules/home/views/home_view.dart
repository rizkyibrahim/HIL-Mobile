import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hil_mobile/app/modules/profile/main.dart';

import '../controllers/home_controller.dart';
import 'package:hil_mobile/app/modules/hil/main.dart';
import 'package:hil_mobile/app/modules/task/main.dart';
import 'package:hil_mobile/app/modules/profile/main.dart';
import 'package:hil_mobile/app/modules/setting/main.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                TaskView(),
                HilView(),
                ProfileView(),
                SettingView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icons/task_to_do.png'),
                  width: 35,
                  height: 40,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/task_to_do_active.png'),
                  width: 35,
                  height: 40,
                ),
                label: 'Task To Do',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icons/hil_management.png'),
                  width: 35,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/hil_management_active.png'),
                  width: 35,
                  height: 40,
                ),
                label: 'HIL Management',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icons/profile.png'),
                  width: 35,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/profile_active.png'),
                  width: 35,
                  height: 40,
                ),
                label: 'Profile',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/icons/setting.png'),
                  width: 35,
                ),
                activeIcon: Image(
                  image: AssetImage('assets/icons/setting_active.png'),
                  width: 35,
                  height: 40,
                ),
                label: 'Setting',
                backgroundColor: Colors.white,
              ),
            ],
            selectedItemColor: Color.fromRGBO(1, 98, 153, 1),
          ),
        );
      },
    );
  }
}
