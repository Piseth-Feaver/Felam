import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceDetailView extends GetView<AttendanceDetailView> {
  const AttendanceDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Introduction to Enginnering",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 3 ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dr. Liv Yi"),
                Text("25 June 2024")
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("7:00 - 8:30"),
                Text("Monday"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black12,
              ),
              height: 40.60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Time"),
                    Text("Action"),
                    Text("Status"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("7:55 AM"),
                  Text("Check-in"),
                  Container(
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
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("8:30 AM"),
                  Text("Check-out"),
                  Icon(Icons.minimize),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
