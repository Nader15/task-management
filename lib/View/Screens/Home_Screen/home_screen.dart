import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/Utils/app_colors.dart';
import 'package:task_management/Utils/app_icons.dart';

import '../../Widgets/notifications_icon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: Icon(
            Icons.menu,
            color: AppColors.NEUTRAL_COLOR,
          ),
        ),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Hi, Kemito",
            style: TextStyle(color: AppColors.NEUTRAL_COLOR,fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Let’s finish your work today",
            style: TextStyle(color: AppColors.GREY_COLOR),
          ),
        ),
        actions: [
          NotificationsIconWidget()
        ],
      ),
    );
  }
}
