import 'package:fe_lam/pages/tabs/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.index.value,
          children: const <Widget>[
            CalendarView(),
            CourseView(),
            ProfileView(),
          ],
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.index.value,
          onTap: controller.onChangeIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.dashboard_outlined),
              label: "Course",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle_outlined),
              label: "profile",
            ),
          ],
        );
      }),
    );
  }
}
