import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:task_management/Utils/app_colors.dart';

import '../../Widgets/custom_button.dart';
import '../../Widgets/notifications_icon_widget.dart';
import '../../Widgets/titled_textField.dart';

class ProjectSummaryScreen extends StatelessWidget {
  ProjectSummaryScreen({super.key});

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
        title: Text(
          "Project Summary",
          style: TextStyle(
              color: AppColors.NEUTRAL_COLOR,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [NotificationsIconWidget()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  projectStatusWidget(
                    color: Color(0xff3A9ADE),
                    number: 10,
                    icon: Icons.access_time_filled,
                    title: "Project\nIn Progress",
                  ),
                  projectStatusWidget(
                    color: Color(0xff3F8B8D),
                    number: 24,
                    icon: Icons.verified
                    ,
                    title: "Project\nCompeted",
                  ),
                  projectStatusWidget(
                    color: Color(0xffDD4A4A),
                    number: 5,
                    icon: Icons.cancel,
                    title: "Project\nCancelled",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(

                onPress: () {

                },
                height: 56,
                title: Text(
                  'View All Project',
                  style: TextStyle(fontSize: 16),
                ),
                backgroundColor: AppColors.WHITE_COLOR,
                foregroundColor: AppColors.BLACK_COLOR,
                borderSideColor: AppColors.BLACK_COLOR,
              ),
              SfCartesianChart(
                // Initialize category axis
                  primaryXAxis: CategoryAxis(

                  ),
                  series: <CartesianSeries<SalesData, String>>[
                    ColumnSeries<SalesData, String>(
                        dataSource: data,
                        xValueMapper: (SalesData data, _) => data.year,
                        yValueMapper: (SalesData data, _) => data.sales,
                        name: 'Gold',
                        color: Color.fromRGBO(8, 142, 255, 1))
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget projectStatusWidget(
      {int number = 0, IconData? icon, String title = '', Color? color}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$number",
                style: TextStyle(
                  color: AppColors.WHITE_COLOR,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  color: AppColors.WHITE_COLOR,
                  fontSize: 12,
                ),
              )
            ],
          ),
          Icon(
            icon,
            color: AppColors.WHITE_COLOR,
            size: 20,
          )
        ],
      ),
    );
  }
  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40),
    SalesData('Jun', 50),
  ];
}
class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
