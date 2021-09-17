import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/category_identify_bullet.dart';

class DetailIdentifyPage extends StatelessWidget {
  final String imageUrl;
  final String categoryOne;
  final String categoryTwo;
  final String title;
  final String rating;
  final String kingdomeClass;
  final String familyClass;
  final String description;

  DetailIdentifyPage({
    this.imageUrl,
    this.categoryOne,
    this.categoryTwo,
    this.title,
    this.rating,
    this.kingdomeClass,
    this.familyClass,
    this.description,
  });
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
                                'assets/$imageUrl',
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CategoryIdentifyBullet(categoryOne),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CategoryIdentifyBullet(categoryTwo),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: darkColor,
                                  fontSize: 27,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.grey,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    rating,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: darkColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kingdom',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: darkGreyColor.withOpacity(0.9),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        kingdomeClass,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: darkGreyColor.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 54,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Family',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          color: darkGreyColor.withOpacity(0.9),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        familyClass,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: darkGreyColor.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: darkGreyColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: darkGreyColor.withOpacity(0.5),
                                ),
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
