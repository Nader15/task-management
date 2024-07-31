import 'package:get/get.dart';
import 'package:task_management/Logic/binding/main_binding.dart';

import '../View/Screens/Login_Screen/login_screen.dart';
import '../View/Screens/Main_Screen/main_screen.dart';
import '../View/Screens/Project_Summary_Screen/project_summary_screen.dart';


class AppRoutes {

  static const loginScreen = Routes.loginScreen;


  //getPages
  static final routes = [

    GetPage(
      name: Routes.loginScreen,
      page: () =>  LoginScreen(),
        binding: MainBinding()
    ),

    GetPage(
      name: Routes.mainScreen,
      page: () =>  MainScreen(),
        binding: MainBinding()
    ),

    GetPage(
      name: Routes.projectSummaryScreen,
      page: () =>  ProjectSummaryScreen(),
    ),


  ];
}

class Routes {
  static const mainScreen = '/MainScreen';
  static const loginScreen = '/loginScreen';
  static const projectSummaryScreen = '/projectSummaryScreen';

}
