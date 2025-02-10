import 'package:fe_lam/pages/export.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'export.dart';

class LanguageView extends GetView<LanguageController> {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Languages"),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Get.toNamed(PagesRoute.tabs);
          },
          icon: Icon(Icons.backspace),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Column(
            children: [
              ListTile(
                onTap: (){},
                title: Text("English",style: TextStyle(fontSize: 18),),
                trailing: Icon(Icons.circle_outlined),
              ),
              ListTile(
                onTap: (){},
                title: Text("Khmer",style: TextStyle(fontSize: 18),),
                trailing: Icon(Icons.circle_outlined,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
