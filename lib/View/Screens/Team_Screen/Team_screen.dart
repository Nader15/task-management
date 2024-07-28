import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/Utils/app_colors.dart';

import '../../Widgets/notifications_icon_widget.dart';

class TeamScreen extends StatelessWidget {
  TeamScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.NEUTRAL_COLOR,
          ),
        ),
        title: Text(
          "Team",
          style: TextStyle(
              color: AppColors.NEUTRAL_COLOR,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: AppColors.NEUTRAL_COLOR,
                  borderRadius: BorderRadius.circular(5.32),
                  border: Border.all(color: AppColors.GREY_COLOR)),
              child: Icon(Icons.edit),
            ),
          )
        ],
      ),
    );
  }
}
