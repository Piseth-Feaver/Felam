import 'package:fe_lam/pages/export.dart';
import 'package:fe_lam/pages/tabs/home/permission/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PermissionView extends GetView<PermissionController> {
  const PermissionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permission"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Container(
              // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left side: info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center, // Ensure vertical alignment too
                    children: [
                      Text(
                        "20 Mar 2025 [09:00 - 12:00]",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Computer Programming",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Mr. Seng Vannak",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  // Right side: Status Badge aligned center
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Late",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height:14,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left side: info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center, // Ensure vertical alignment too
                    children: [
                      Text(
                        "20 Mar 2025 [09:00 - 12:00]",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Computer Programming",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Mr. Seng Vannak",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  // Right side: Status Badge aligned center
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Absent",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Container(
              // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Left side: info
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center, // Ensure vertical alignment too
                    children: [
                      Text(
                        "20 Mar 2025 [09:00 - 12:00]",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Computer Programming",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Mr. Seng Vannak",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  // Right side: Status Badge aligned center
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "On Time",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.toNamed(PagesRoute.formpermission);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
