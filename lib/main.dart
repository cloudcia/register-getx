import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/pages.dart';
import 'package:getx/controller/user_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App Name',
      initialRoute: '/register', // or the route for the first registration page
      debugShowCheckedModeBanner: false,
      getPages: Pages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(UserController());
      }),
    );
  }
}
