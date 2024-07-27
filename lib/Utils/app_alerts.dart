import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app_colors.dart';


class AppAlerts {
  Future<bool>? onWillPop() async {
    final result = await Get.defaultDialog(
      title: 'Exit'.tr,
      titleStyle: const TextStyle(color: AppColors.RED_COLOR),
      content: Text("exit_app_alert".tr, textAlign: TextAlign.center),
      cancel: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: const BorderSide(
                color: AppColors.MAIN_COLOR,
                width: 1,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColors.WHITE_COLOR,
          ),
          foregroundColor: MaterialStateProperty.all(
            AppColors.MAIN_COLOR,
          ),
        ),
        onPressed: () {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        child: Text("Yes".tr),
      ),
      confirm: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            AppColors.MAIN_COLOR,
          ),
          foregroundColor: MaterialStateProperty.all(
            AppColors.BLACK_COLOR,
          ),
        ),
        onPressed: () {
          Get.back();
        },
        child: Text(
          "No".tr,
          style: const TextStyle(color: AppColors.WHITE_COLOR),
        ),
      ),
    );
    if (result == null) {
      return false;
    } else {
      return result;
    }
  }

}

