import 'package:get/get.dart';

import '../View/Screens/Login_Screen/login_screen.dart';


class AppRoutes {

  static const loginScreen = Routes.loginScreen;


  //getPages
  static final routes = [

    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),


  ];
}

class Routes {
  static const loginScreen = '/loginScreen';

}
