import 'package:flutter/material.dart';

class CategoryIdentifyBullet extends StatelessWidget {
  final String title;

  CategoryIdentifyBullet(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0XFF2F91EB).withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Color(0XFF2F91EB),
          ),
        ),
      ),
    );
  }
}
