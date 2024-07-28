import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/Utils/app_colors.dart';

import '../../View/Screens/Calender_Screen/calender_screen.dart';
import '../../View/Screens/Home_Screen/home_screen.dart';
import '../../View/Screens/Project_Summary_Screen/project_summary_screen.dart';
import '../../View/Screens/Team_Screen/Team_screen.dart';

class MainController extends GetxController {
  late PageController pageController;
  RxInt currentIndex = 0.obs;
  var appBarTitle = ''.obs;


  final tabs = [
    HomeScreen(),
    ProjectSummaryScreen(),
    CalenderScreen(),
    TeamScreen(),
  ].obs;

  @override
  void onInit() async {
    super.onInit();
    pageController = PageController();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }


}
