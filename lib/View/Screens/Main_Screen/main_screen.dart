import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_management/Utils/app_constants.dart';
import 'package:task_management/Utils/app_images.dart';
import '../../../Logic/controllers/main_controller.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_icons.dart';

class MainScreen extends StatelessWidget {
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: AppColors.NEUTRAL_COLOR,
          child: Icon(
            Icons.add,
            size: 32,
          ),
          foregroundColor: AppColors.WHITE_COLOR,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          child: Container(
            color: AppColors.WHITE_COLOR,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        mainController.currentIndex.value = 0;
                      },
                      child: mainController.currentIndex.value == 0
                          ? SvgPicture.asset(
                              AppIcons.selected_category_icon,
                              height: 25,
                            )
                          : SvgPicture.asset(AppIcons.category_icon),
                    ),
                    SizedBox(
                      width: AppConstants.mediaWidth(context) / 7,
                    ),
                    InkWell(
                      onTap: () {
                        mainController.currentIndex.value = 1;
                      },
                      child: mainController.currentIndex.value == 1
                          ? SvgPicture.asset(
                              AppIcons.selected_folder_icon,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              AppIcons.folder_icon,
                            ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        mainController.currentIndex.value = 2;
                      },
                      child: mainController.currentIndex.value == 2
                          ? SvgPicture.asset(
                              AppIcons.selected_calendar_icon,
                              height: 25,
                            )
                          : SvgPicture.asset(AppIcons.calendar_icon),
                    ),
                    SizedBox(
                      width: AppConstants.mediaWidth(context) / 8,
                    ),
                    InkWell(
                      onTap: () {
                        mainController.currentIndex.value = 3;
                      },
                      child: Image.asset(AppImages.team_1_image,scale: 0.6,),),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: IndexedStack(
          index: mainController.currentIndex.value,
          children: mainController.tabs,
        ),
      );
    });
  }
}
