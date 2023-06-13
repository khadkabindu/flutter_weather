import 'package:flutter/material.dart';
import 'package:flutter_weather/week_slots.dart';

class DailyForecastCard extends StatefulWidget {
  const DailyForecastCard({Key? key}) : super(key: key);

  @override
  State<DailyForecastCard> createState() => _DailyForecastCardState();
}

class _DailyForecastCardState extends State<DailyForecastCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xff1c2232),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              "DAILY FORECAST",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Column(
            children: [
              DaysList(),
            ],
          ),
        ],
      ),
    );
  }
}
