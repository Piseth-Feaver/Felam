import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'export.dart';

class CourseView extends GetView<CourseController> {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Programing",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Introduction to Engineering",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Computer Literacy",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Self-Development and Management",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child: Text("Detail", style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Economic",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Marketing",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Communication in Business",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Engineering Physic I",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Calculus I",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Project Practicum",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child:Text("Detail",style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Senior Project",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child: Text("Detail", style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mathematics",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child: Text("Detail", style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
            Divider(),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Database and Application",style: TextStyle(fontSize: 18),),
                TextButton(
                  onPressed: (){},
                  child: Text("Detail", style: TextStyle(color: Colors.deepPurpleAccent),),
                ),
              ],
            ).paddingSymmetric(horizontal: 12),
          ],
        ),
      ),
    );
  }
}

