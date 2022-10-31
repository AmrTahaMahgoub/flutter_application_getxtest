import 'dart:convert';
import 'package:flutter_application_getxtest/beers_model.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
const baseUrl =
    'https://api.sampleapis.com/beers/ale';

class DataController extends GetxController {

 List<BeersModel>? beers;
  bool isDataLoading = false;
  @override
  void onInit() {
    super.onInit();
    getBeersServices();
  }


  
   Future<List<BeersModel>> getBeersServices() async {
      isDataLoading = true;
    update();
    http.Response response = await http.get(Uri.parse(baseUrl));
    var json = jsonDecode(response.body);
    FinalBeersModel data = FinalBeersModel.fromJson(json);
    //  print(data.beersModelList);
     isDataLoading = false;
    update();
    return data.beersModelList;
  


   }

  }

