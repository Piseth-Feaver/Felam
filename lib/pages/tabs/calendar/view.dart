import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'export.dart';

class CalendarView extends GetView<CalendarController> {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text("Calendar"),
        ),
      ],
    );
  }
}
