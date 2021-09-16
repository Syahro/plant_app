import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 85,
      child: CurvedNavigationBar(
        backgroundColor: lightGreenColor,
        animationDuration: Duration(milliseconds: 75),
        items: <Widget>[
          Icon(
            Icons.home,
            size: 22,
            color: lightGreenColor,
          ),
          Icon(
            Icons.add,
            size: 22,
            color: lightGreenColor,
          ),
          Icon(
            Icons.person_outlined,
            size: 22,
            color: lightGreenColor,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
