import 'package:flutter/material.dart';

import '../theme.dart';

class ContentTitle extends StatelessWidget {
  final String title;
  final bool isTitle;

  ContentTitle(this.title, this.isTitle);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: isTitle ? FontWeight.w600 : FontWeight.w500,
        color: isTitle ? lightGreenColor : darkGreyColor,
        fontSize: isTitle ? 17 : 14,
      ),
      textAlign: TextAlign.left,
    );
  }
}
