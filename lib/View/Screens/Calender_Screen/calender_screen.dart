import 'package:flutter/material.dart';
import 'package:task_management/Utils/app_colors.dart';

import '../../Widgets/notifications_icon_widget.dart';

class CalenderScreen extends StatelessWidget {
  CalenderScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _key.currentState!.openDrawer(),
          icon: Icon(Icons.menu,color: AppColors.NEUTRAL_COLOR,),
        ),
        title: Text(
          "Calender",
          style: TextStyle(color: AppColors.NEUTRAL_COLOR,fontSize: 16,fontWeight: FontWeight.bold),
        ),
        actions: [
          NotificationsIconWidget()
        ],
      ),
    );
  }
}
