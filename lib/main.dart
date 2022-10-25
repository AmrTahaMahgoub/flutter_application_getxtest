import 'package:flutter/material.dart';
import 'package:flutter_application_getxtest/routs.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'getx/get_pages.dart';
import 'my_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteConstant.homeScreen,
      getPages: getPages,
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}

