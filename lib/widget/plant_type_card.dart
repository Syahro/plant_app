import 'package:flutter/material.dart';

import '../theme.dart';

class PlantTypeCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String countType;

  PlantTypeCard({
    this.imageUrl,
    this.title,
    this.countType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 299,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Image.asset(
              imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0XFF3D3D3D).withOpacity(0.32),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13,
              bottom: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: whiteColor.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  countType,
                  style: TextStyle(
                    fontSize: 12,
                    color: whiteColor.withOpacity(0.5),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
