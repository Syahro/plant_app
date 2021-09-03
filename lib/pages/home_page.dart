import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';
import 'package:plant_app/widget/home_category_card.dart';
import 'package:plant_app/widget/photo_card.dart';
import 'package:plant_app/widget/plant_type_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [linearOne, linearTwo],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: backgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Positioned(
            left: 210,
            bottom: 520,
            child: Container(
              height: 204,
              width: 204,
              decoration: BoxDecoration(
                color: whiteColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(102),
              ),
            ),
          ),
          Positioned(
            left: 215,
            bottom: 460,
            child: Text(
              'Home',
              style: TextStyle(
                  fontSize: 67,
                  color: whiteColor.withOpacity(0.1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 75,
                  left: defaultMargin,
                  right: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hello Taylor,',
                              style: TextStyle(
                                fontSize: 21,
                                color: whiteColor.withOpacity(0.8),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              'Let’s Learn More About Plants',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: whiteColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/profile.png',
                          width: 47,
                          height: 47,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: darkGreyColor.withOpacity(0.1),
                            blurRadius: 4,
                            spreadRadius: 3,
                            offset: Offset.zero,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultMargin,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/search.png',
                              width: 14,
                              height: 14,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              'Search For Plants',
                              style: TextStyle(
                                fontSize: 14,
                                color: darkGreyColor.withOpacity(0.3),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCategoryCard(
                          imageUrl: 'assets/identify.png',
                          title: 'IDENTIFY',
                          isActive: true,
                        ),
                        HomeCategoryCard(
                          imageUrl: 'assets/species.png',
                          title: 'SPECIES',
                          isActive: false,
                        ),
                        HomeCategoryCard(
                          imageUrl: 'assets/articels.png',
                          title: 'ARTICLES',
                          isActive: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Plant Types',
                      style: TextStyle(
                        fontSize: 17,
                        color: darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PlantTypeCard(
                            imageUrl: 'assets/type1.png',
                            title: 'Home Plants',
                            countType: '68 Types of Plants',
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          PlantTypeCard(
                            imageUrl: 'assets/type2.png',
                            title: 'Huge Plants',
                            countType: '102 Type Of Plants',
                          ),
                          SizedBox(
                            width: defaultMargin,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Photography',
                      style: TextStyle(
                        fontSize: 17,
                        color: darkColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PhotoCard(
                            imageUrl: 'assets/photo1.png',
                            tags: '#Mini',
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          PhotoCard(
                            imageUrl: 'assets/photo2.png',
                            tags: '#Homely',
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          PhotoCard(
                            imageUrl: 'assets/photo3.png',
                            tags: '#Cute',
                          ),
                          SizedBox(
                            width: defaultMargin,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
