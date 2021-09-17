import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/pages/camera_identify_page.dart';
import 'package:plant_app/pages/species_page.dart';
import 'package:plant_app/theme.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/home_category_card.dart';
import 'package:plant_app/widget/photo_card.dart';
import 'package:plant_app/widget/plant_type_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 172,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        linearOne,
                        linearTwo,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -90,
                        right: -40,
                        child: Container(
                          height: 204,
                          width: 204,
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(102),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        right: -40,
                        child: Container(
                          height: 124,
                          width: 124,
                          decoration: BoxDecoration(
                            color: whiteColor.withOpacity(0.13),
                            borderRadius: BorderRadius.circular(102),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -10,
                        right: -12,
                        child: Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 67,
                            fontWeight: FontWeight.w900,
                            color: whiteColor.withOpacity(0.2),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 23),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hello Taylor,',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: whiteColor,
                                        fontSize: 21,
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
                                        color: whiteColor.withOpacity(0.5),
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
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  margin: EdgeInsets.only(top: 172),
                  padding: EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return CameraIdentifyPage();
                                    },
                                  ),
                                );
                              },
                              child: HomeCategoryCard(
                                imageUrl: 'assets/identify.png',
                                title: 'IDENTIFY',
                                isActive: true,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SpeciesPage();
                                    },
                                  ),
                                );
                              },
                              child: HomeCategoryCard(
                                imageUrl: 'assets/species.png',
                                title: 'SPECIES',
                                isActive: false,
                              ),
                            ),
                            HomeCategoryCard(
                              imageUrl: 'assets/articels.png',
                              title: 'ARTICLES',
                              isActive: false,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 24,
                            ),
                            Text(
                              'Plant Types',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: darkColor,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  PlantTypeCard(
                                    imageUrl: 'assets/type1.png',
                                    title: 'Home Plants',
                                    countType: '68',
                                  ),
                                  SizedBox(
                                    width: 14,
                                  ),
                                  PlantTypeCard(
                                    imageUrl: 'assets/type2.png',
                                    title: 'Huge Plants',
                                    countType: '102',
                                  ),
                                  SizedBox(
                                    width: 23,
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
                                fontWeight: FontWeight.bold,
                                color: darkColor,
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
                                    width: 23,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 148,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    width: MediaQuery.of(context).size.width - (2 * 23),
                    height: 50,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: darkGreyColor.withOpacity(0.1),
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(1, 1),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: darkGreyColor.withOpacity(0.3),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Search For Plants ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: darkGreyColor.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
