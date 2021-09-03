import 'package:flutter/material.dart';

import '../theme.dart';

class PhotoCard extends StatelessWidget {
  final String imageUrl;
  final String tags;

  PhotoCard({
    this.imageUrl,
    this.tags,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: 126,
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
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 110),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  width: 50,
                  color: whiteColor.withOpacity(0.6),
                  child: Center(
                    child: Text(
                      tags,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
