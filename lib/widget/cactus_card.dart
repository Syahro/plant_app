import 'package:flutter/material.dart';

import '../theme.dart';

class CactusCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  CactusCard(
    this.imageUrl,
    this.title,
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 139,
          width: 139,
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 1,
                spreadRadius: 2,
                offset: Offset(1, 1),
              )
            ],
          ),
          child: Image.asset(
            'assets/$imageUrl',
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: darkColor,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KINGDOM',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: darkGreyColor.withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Plantee',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: darkGreyColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FAMILY',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: darkGreyColor.withOpacity(0.5),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cactaceae',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: darkGreyColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'DESCRIPTION',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: darkGreyColor.withOpacity(0.5),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Cactus spines are produced\nfrom specialized structures...',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: darkGreyColor,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
