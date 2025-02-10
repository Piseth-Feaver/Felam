import 'package:fe_lam/pages/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'export.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 0,
              left: 0,
              right: 20,
              bottom: 0,
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Icon(Icons.person,size: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    onTap: (){
                      Get.toNamed(PagesRoute.editProfile);
                    },
                    leading: Icon(Icons.person),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      Get.toNamed(PagesRoute.languages);
                    },
                    title: Text("Language"),
                    leading: Icon(Icons.language),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){

                    },
                    title: Text("Appearance"),
                    leading: Icon(Icons.incomplete_circle),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      Get.toNamed(PagesRoute.term);
                    },
                    title: Text("Term and Condition"),
                    leading: Icon(Icons.hardware),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      controller.onTerm();
                    },
                    title: Text("Privacy Policy"),
                    leading: Icon(Icons.privacy_tip_outlined),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: (){
                      controller.showSignOutDialog();
                    },
                    title: Text("Sign Out",style: TextStyle(color: Colors.red),),
                    trailing: Icon(Icons.arrow_forward_ios),
                    leading: Icon(Icons.exit_to_app,color: Colors.red,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
