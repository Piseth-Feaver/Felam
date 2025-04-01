
import 'package:fe_lam/pages/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle),
        title: Text("Welcome back, Lonh Piseth"),
        elevation: 2,
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    onTap: (){
                      Get.toNamed(PagesRoute.attendance);
                    },
                    leading: Icon(Icons.attach_email),
                    title: Text("Attendance"),
                    subtitle: Text("Check-in"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    onTap: (){
                      Get.toNamed(PagesRoute.permission);
                    },
                    leading: Icon(Icons.add_task),
                    title: Text("Ask Permission"),
                    subtitle: Text("Form for Ask Permission"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text("Students"),
                    subtitle: Text("View Student"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Handle back button press
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.schedule),
                    title: Text("Schedule"),
                    subtitle: Text("View Schedule"),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Handle back button press
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  Get.toNamed(PagesRoute.tracking);
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.schedule),
                    title: Text("Tracking Att Student"),
                    subtitle: Text("View Students"),
                    trailing: IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
