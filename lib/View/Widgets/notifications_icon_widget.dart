import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/app_colors.dart';
import '../../Utils/app_icons.dart';

class NotificationsIconWidget extends StatelessWidget {
  const NotificationsIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.32),
              border: Border.all(color: AppColors.NEW_GREY_COLOR)),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              SvgPicture.asset(AppIcons.notification_icon),
              Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.WHITE_COLOR),
                  child: Icon(
                    Icons.circle,
                    color: AppColors.RED_COLOR,
                    size: 10,
                  ))
            ],
          )),
    );
  }
}
