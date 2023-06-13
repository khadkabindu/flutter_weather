import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/nightsky.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kuleshwor",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [

                                Text(
                                  "Just Updated",
                                  style: TextStyle(color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.location_city, color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_rounded, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('25\u00B0', style: TextStyle(color: Colors.white, fontSize: 100),),
                            Text('Cloudy',style: TextStyle(color: Colors.white, fontSize: 30),),
                            SizedBox(height: 10,),
                            Container(
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('\u2191' + ' 25\u00B0F', style: TextStyle(color: Colors.white, fontSize: 20),),
                                  Text('\u2193' + ' 25\u00B0F', style: TextStyle(color: Colors.white, fontSize: 20),),
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIcon(iconType: Icons.beach_access, value: "42", unit: "%",),
                            SizedBox(height: 10,),
                            CustomIcon(iconType: Icons.wb_sunny, value: "20", unit: "\u00B0",)

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
} 


class CustomIcon extends StatelessWidget {
  final IconData iconType;
  final String value;
  final String unit;

  const CustomIcon({Key? key, required this.iconType, required this.value, required this.unit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blueGrey
      ),
      height: 40,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconType, color: Colors.white,),
          Text(value+ unit, style: TextStyle(color: Colors.white),)

        ],
      ),
    );
  }
}

