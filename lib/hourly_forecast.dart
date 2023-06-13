import 'package:flutter/material.dart';
import 'package:flutter_weather/time_slots.dart';

class HourlyForecastCard extends StatefulWidget {
  const HourlyForecastCard({Key? key}) : super(key: key);

  @override
  State<HourlyForecastCard> createState() => _HourlyForecastCardState();
}

class _HourlyForecastCardState extends State<HourlyForecastCard> {
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
            "HOURLY FORECAST",
            style: TextStyle(
                color: Colors.white, fontSize: 16),
          )),
          Column(
            children: [
              TimeSlots(),
            ],
          ),
        ],
      ),
    );
  }
}
