import 'dart:developer';

import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_management/Utils/app_colors.dart';
import 'package:task_management/Utils/app_constants.dart';
import '../../Widgets/notifications_icon_widget.dart';

class CalenderScreen extends StatefulWidget {
  CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  DateTime selectedDateTime = DateTime.now();
  late final _tabController = TabController(length: 2, vsync: this);
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(

        context: context,
        initialDate: selectedDateTime,
        firstDate: selectedDateTime,
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDateTime) {
      setState(() {
        selectedDateTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F7F8),
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
          "Calender",
          style: TextStyle(
              color: AppColors.NEUTRAL_COLOR,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        actions: [NotificationsIconWidget()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Stack(
              children: [
                EasyDateTimeLine(
                
                  initialDate: selectedDateTime,
                  onDateChange: (selectedDate) {
                    setState(() {
                      selectedDateTime = selectedDate;
                    });
                    //`selectedDate` the new date selected.
                  },
                  headerProps: const EasyHeaderProps(
                    showSelectedDate: !true,
                    monthPickerType: MonthPickerType.switcher,
                    dateFormatter: DateFormatter.fullDateMonthAsStrDY(),
                  ),
                  activeColor: AppColors.NEUTRAL_COLOR,
                  dayProps: const EasyDayProps(
                    dayStructure: DayStructure.dayStrDayNum,
                  ),
                ),
                IconButton(
                  onPressed: (){
                    _selectDate(context);
                  },
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${DateFormat.yMMM().format(selectedDateTime)}",style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                )
              ],
            ),
            TabBar(
              dividerHeight: 0,
              controller: _tabController,
              tabs: const <Widget>[
                Tab(
                  text: 'Schedule',
                ),
                Tab(
                  text: 'Task',
                ),
              ],
            ),
            Container(
              color: AppColors.WHITE_COLOR,
              height: AppConstants.mediaHeight(context) / 2.5,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            color: Color(0xffF9F1FB),
                            borderRadius: BorderRadius.circular(8),
                            border: Border(
                                left: BorderSide(
                                    width: 6, color: AppColors.PURPLE_COLOR))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Meeting with Client",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time_filled,
                                  color: AppColors.NEW_GREY_COLOR,
                                ),
                                Text(
                                  "11:00 AM - 12:00 AM",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.NEW_GREY_COLOR,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                  ),
                  ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          contentPadding:
                              EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                          title: Text("Meeting Concept"),
                          subtitle: Text("Due Date : Mon, 12 Jan 2023"),
                          trailing: Checkbox(
                            onChanged: (v) {},
                            value: true,
                            activeColor: AppColors.GREEN_COLOR,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 10,
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
