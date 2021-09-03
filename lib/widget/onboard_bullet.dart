import 'package:flutter/material.dart';

import '../theme.dart';

class OnboardBullet extends StatelessWidget {
  final bool isActive;

  OnboardBullet(this.isActive);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: isActive ? lightGreenColor : darkGreyColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(3.5),
      ),
    );
  }
}
