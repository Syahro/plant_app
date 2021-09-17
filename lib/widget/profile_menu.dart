import 'package:flutter/material.dart';

import '../theme.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final bool isActive;

  ProfileMenu(
    this.title,
    this.isActive,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 9),
      decoration: BoxDecoration(
        color: isActive ? blueColor : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: isActive ? whiteColor : darkGreyColor.withOpacity(0.3),
        ),
      ),
    );
  }
}
