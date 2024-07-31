import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/Utils/app_colors.dart';

import '../../Widgets/custom_button.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    color: Color(0xffF6F7F8)
                ),
                child: Column(
                  children: [
                    Container(

                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/aksantara_logo_image.png",
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Aksantara Digital",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "@aksantaradigital",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.NEW_GREY_COLOR,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      onPress: () {
                      },
                      height: 56,
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.link),
                          const SizedBox(width: 10),
                          Text(
                            'Copy Link',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      backgroundColor: AppColors.NEUTRAL_COLOR,
                      foregroundColor: AppColors.WHITE_COLOR,
                      borderSideColor: AppColors.GREY_COLOR,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
