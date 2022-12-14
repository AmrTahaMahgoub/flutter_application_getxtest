import 'package:flutter/material.dart';
import 'package:flutter_application_getxtest/getx/get_pages.dart';
import 'package:flutter_application_getxtest/view_screen.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';


Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: RouteConstant.textfeild,
       getPages: getPages,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const ViewScreen(),
    );
  }
}
