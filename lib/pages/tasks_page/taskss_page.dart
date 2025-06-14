import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_cycle8_sat/shared_components/theme/colors.dart';

import 'widgets/task_items.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,
          monthColor: primaryColor,
          dayColor: Colors.black,
          activeDayColor: primaryColor,
          activeBackgroundDayColor: Colors.white,
          dotsColor: primaryColor,
          selectableDayPredicate: (date) => date.day != 23,
          locale: 'en_ISO',
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskItems();
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
