import 'package:flutter/material.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/category_identify_bullet.dart';

import '../theme.dart';

class DetailArticlesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 281,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/articles_detail.png',
                                width: double.infinity,
                                height: 281,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                height: 281,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.center,
                                    colors: [
                                      Colors.black.withOpacity(0.5),
                                      Colors.transparent
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 23, vertical: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.chevron_left,
                                      color: whiteColor,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: whiteColor,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 281),
                          padding: EdgeInsets.symmetric(
                              horizontal: 23, vertical: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CategoryIdentifyBullet('VEGETABLES'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CategoryIdentifyBullet('GARDEN'),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/profile2.png',
                                    width: 37,
                                    height: 37,
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Shylla Monic',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: darkGreyColor,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '2019 . 01 . 01',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: darkGreyColor.withOpacity(0.5),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 30,
                                    width: 73,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 14),
                                    decoration: BoxDecoration(
                                      color: lightGreenColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.add,
                                            color: whiteColor,
                                            size: 17,
                                          ),
                                          Text(
                                            'Follow',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 26,
                              ),
                              Text(
                                'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist company McQueens and the in-house florist for the Maybourne Hotel Group. “Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness,” she said. “Plants and flowers can refresh us, boost our energy and help us recalibrate.”',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: darkGreyColor.withOpacity(0.5),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 250,
                          right: 20,
                          child: Container(
                            height: 57,
                            width: 57,
                            decoration: BoxDecoration(
                              color: Color(0XFFFF6262),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: whiteColor,
                                size: 28,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
