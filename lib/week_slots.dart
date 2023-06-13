import 'package:flutter/material.dart';

class DaysList extends StatelessWidget {
  final List<String> daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  final List<IconData> weatherIcon = [
    Icons.wb_sunny_outlined,
    Icons.wb_twighlight,
    Icons.wb_cloudy,
    Icons.wb_cloudy,
    Icons.wb_sunny_outlined,
    Icons.wb_sunny_outlined,
    Icons.wb_cloudy
  ];
  final List<String> weather = [
    "Sunny",
    "Partly sunny",
    "Cloudy",
    "Cloudy",
    "Sunny",
    "Rainy",
    "Cloudy"
  ];

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now().weekday - 1;

    return Container(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          final dayIndex = (today + index) % 7;
          final dayName = daysOfWeek[dayIndex];
          final isToday = index == 0;

          return Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  isToday ? "Today" : dayName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                SizedBox(height: 15,),
                Icon(
                  weatherIcon[index],
                  color: Colors.white,
                ),
                SizedBox(height: 12,),

                Text(weather[index], style: TextStyle(color: Colors.white),)
              ],
            ),
          );
        },
      ),
    );
  }
}
