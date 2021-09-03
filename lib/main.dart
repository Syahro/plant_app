import 'package:flutter/material.dart';
import 'package:plant_app/pages/boarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardingPage(
        widthImage: 255.0,
        heightImage: 255.14,
        imageUrl: 'assets/illustration1.png',
        title: 'Identify Plants',
        subTitle:
            'You can identify the plants you don\'t know\nthrough your camera',
        isBullOne: true,
        isBullTwo: false,
        isBullThree: false,
        textButton: 'NEXT',
        isAction: 'nextOne',
      ),
    );
  }
}
