import 'package:fe_lam/core/export.dart';
import 'package:fe_lam/pages/tabs/home/tracking_att/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackingView extends GetView<TrackingController> {
  const TrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Ask Permission"),
        elevation: 2,
      ),
      body: Obx(() {
        final courses = controller.courses;
        return ListView.separated(
          itemCount: courses.length,
          separatorBuilder: (_, i) => const SizedBox(height: kPadding),
          itemBuilder: (_, index) {
            final course = courses[index];
            return Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.dateTime,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(course.subject),
                            Icon(Icons.arrow_back_ios),
                          ],
                        ),
                        Text(course.instructor),
                        Text(
                          "Padding",
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
