import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeSlots extends StatelessWidget {
  final List<String> timeSlots = [];

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    // Generate current time
    final currentTime = 'Now';

    // Generate time slots starting from the current hour
    DateTime startTime = DateTime(now.year, now.month, now.day, now.hour);
    final endTime = DateTime(now.year, now.month, now.day, 23, 59, 59);

    if (startTime.isBefore(endTime)) {
      final timeSlotFormatted = DateFormat('ha').format(startTime);
      timeSlots.add(timeSlotFormatted);
      startTime = startTime.add(Duration(hours: 1)); // Increment by 1 hour
    }

    while (startTime.isBefore(endTime)) {
      final timeSlotFormatted = DateFormat('ha').format(startTime);
      timeSlots.add(timeSlotFormatted);
      startTime = startTime.add(Duration(hours: 1)); // Increment by 1 hour
    }

    return Container(
      height: 130,
      width: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: timeSlots.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  child: ListTile(
                    title: Text(
                      currentTime,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.cloud,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "25\u00B0",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                child: ListTile(
                  title: Text(
                    timeSlots[index - 1],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.cloud,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "25\u00B0",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
