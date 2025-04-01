import 'package:get/get.dart';

import 'export.dart';

class TrackingController extends GetxController{

  List<CourseSchedule> courses = [
    CourseSchedule(
      dateTime: "20 Mar 2025 [09:00 - 12:00]",
      subject: "Computer Programming",
      instructor: "Mr. Lonh Piseth",
      status: "Pending",
    ),
    CourseSchedule(
      dateTime: "21 Mar 2025 [13:00 - 16:00]",
      subject: "Database Management",
      instructor: "Ms. Sokha Seng",
      status: "Confirmed",
    ),
    CourseSchedule(
      dateTime: "22 Mar 2025 [08:00 - 11:00]",
      subject: "Web Development",
      instructor: "Mr. Dara Nop",
      status: "Completed",
    ),
  ];

}