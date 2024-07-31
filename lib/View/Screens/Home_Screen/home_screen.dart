import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/Utils/app_colors.dart';
import 'package:task_management/Utils/app_icons.dart';
import 'package:task_management/Utils/app_images.dart';

import '../../Widgets/notifications_icon_widget.dart';
import '../../Widgets/titled_textField.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<String> teamsList = [
    AppImages.team_1_image,
    AppImages.team_2_image,
    AppImages.team_3_image,
    AppImages.team_4_image,
    AppImages.team_5_image,
    AppImages.team_6_image,
    AppImages.team_7_image,
    AppImages.team_8_image,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Divider(),
        ),
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
            style: TextStyle(
                color: AppColors.NEUTRAL_COLOR, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Let’s finish your work today",
            style: TextStyle(color: AppColors.GREY_COLOR),
          ),
        ),
        actions: [NotificationsIconWidget()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Team Workspace",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(onTap: () {}, child: Icon(Icons.more_horiz_sharp))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColors.WHITE_COLOR,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              child: Image.asset(
                            "assets/images/aksantara_logo_image.png",
                          )),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Aksantara Digital",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0),
                              ),
                              Text(
                                "8 Member",
                                style: TextStyle(
                                    color: AppColors.GREY_COLOR,
                                    fontSize: 10.0),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Image.asset(AppImages.team_1_image),
                                  Image.asset(AppImages.team_2_image),
                                  Image.asset(AppImages.team_3_image),
                                  Image.asset(AppImages.team_4_image),
                                  Image.asset(AppImages.team_5_image),
                                  Image.asset(AppImages.team_6_image),
                                  Image.asset(AppImages.team_7_image),
                                  Image.asset(AppImages.team_8_image),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: AppColors.WHITE_COLOR,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitledTextField(
                    obscureText: true,
                    title: 'Search',
                    hintText: 'Search your tasks here',
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Today Schedule",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                     decoration: BoxDecoration(
                       boxShadow: [

                       ],
                       borderRadius: BorderRadius.circular(8),
                       border: Border(
                         left: BorderSide(
                           width: 6,
                           color: AppColors.PURPLE_COLOR
                         )
                       )
                     ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: teamsList.length,
                                itemBuilder: (context, index) {
                                  if(index<4){
                                    return Container(
                                      child: Image.asset(
                                        teamsList[index],
                                      ),
                                    );
                                  }else{
                                    if(index == 4){
                                      return Container(
                                        alignment: Alignment.center,
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: AppColors.NEW_GREY_COLOR)
                                        ),
                                        child: Text("${teamsList.length - index}"),
                                      );
                                    }
                                    else{
                                      return SizedBox();
                                    }
                                  }
                                },
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.link,color: AppColors.NEW_GREY_COLOR),
                                    Text("1",style: TextStyle(color: AppColors.NEW_GREY_COLOR),)
                                  ],
                                ),
                                SizedBox(width: 10),
                                Row(
                                  children: [
                                    Icon(Icons.insert_comment_outlined,color: AppColors.NEW_GREY_COLOR,size: 15,),
                                    Text("5",style: TextStyle(color: AppColors.NEW_GREY_COLOR),)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text("Sprint Review Period 02 in May 2022",style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 10),
                        Text("Sprint",style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.GREY_COLOR),),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.access_time_rounded,color: AppColors.NEW_GREY_COLOR),
                            SizedBox(width: 5,),
                            Text("09:00 AM - 10:00 AM",style: TextStyle(color: AppColors.NEW_GREY_COLOR),)
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: AppColors.NEW_GREY_COLOR),
                            SizedBox(width: 5,),
                            Text("Aksantara Office",style: TextStyle(color: AppColors.NEW_GREY_COLOR),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
