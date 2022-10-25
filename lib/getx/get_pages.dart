
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../my_home_screen.dart';
import '../routs.dart';
import 'home_screen_binding.dart';

List<GetPage> getPages = [
  GetPage(
      name: RouteConstant.homeScreen,
      page: () =>  HomeScreen(),
      middlewares:  [
        // Add here
        // AuthGuard(),
      ],
      binding: HomeScreenBinding()),
];