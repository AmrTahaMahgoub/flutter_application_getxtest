import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../categoris_model.dart';

class DataController extends GetxController {
  CategoriesModel? categoriesModel;

  var isDataLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    getApi();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  getApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(
        Uri.tryParse('https://www.osoule.com/api/gloable/faqs')!,
        headers: {
          'api-token':
              'eyJpdiI6Ilo4eThFeFBnMHIzN0hlSngwZ1ZEVVE9PSIsInZhbHVlIjoiL2ZBSENXY0ZBUXJYcmQ4U0VMcE9hQT09IiwibWFjIjoiY2NiMGViZjA0MTYwYmVmYjk0M2ViZTU0ZTVlZjlkZDQwNGJhMDc4NDljMjQ2MzQ4OTVhZmIyNGNiMTdhM2EzOSJ9',
          'lang': 'en'
        },
      );
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);

        categoriesModel = CategoriesModel.fromJson(result);
      } else {
        ///error
      }
    } catch (e) {
      log('Error while getting data is $e');
      print('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
