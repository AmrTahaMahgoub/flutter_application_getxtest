import 'package:flutter_application_getxtest/view_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../routs.dart';
import 'home_screen_binding.dart';

List<GetPage> getPages = [
  GetPage(
    name: RouteConstant.viewscreen,
    page: () => const ViewScreen(),
    binding: HomeScreenBinding(),
  ),
];
