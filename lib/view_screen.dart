import 'package:flutter/material.dart';
import 'package:flutter_application_getxtest/getx/home_controller.dart';
import 'package:get/get.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  DataController dataController = Get.put(DataController());
  @override
  Widget build(BuildContext context) {
    // print(dataController.moviesInfo[0].category);
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<DataController>(
          builder: (controller) => dataController.isDataLoading
              ? const Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount:dataController.beers?.length,
                  itemBuilder: (context, index) => Card(
                    color: Colors.pink,
                    child: Text(
                     ' ${dataController.beers![index].name??'test'}'
                          ,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
