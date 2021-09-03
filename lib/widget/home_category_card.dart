import 'package:flutter/material.dart';

import '../theme.dart';

class HomeCategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final isActive;

  HomeCategoryCard({
    this.imageUrl,
    this.title,
    this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width:
          ((MediaQuery.of(context).size.width - (2 * defaultMargin)) / 3) - 11,
      decoration: BoxDecoration(
        color: isActive ? lightGreenColor : backgroundColor,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: isActive
                ? lightGreenColor.withOpacity(0.4)
                : darkGreyColor.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 3,
          )
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: 21,
              height: 21,
              color: isActive ? whiteColor : lightGreenColor,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: isActive ? whiteColor : darkColor.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
