import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'export.dart';

class CourseView extends GetView<CourseController> {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Score"),


      ),
      body: Column(
        children: [
          
        ],
      )
    );
  }
}

