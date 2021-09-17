import 'package:flutter/material.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/cactus_card.dart';

import '../theme.dart';
import 'detail_identify_page.dart';

class CactusPage extends StatelessWidget {
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
                          'Cactus',
                          style: TextStyle(
                            fontSize: 67,
                            fontWeight: FontWeight.w900,
                            color: whiteColor.withOpacity(0.2),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(23, 41, 23, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.chevron_left,
                                  color: whiteColor,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: whiteColor,
                                  size: 30,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 19,
                            ),
                            Text(
                              'Cactus',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: whiteColor,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: backgroundColor,
                  margin: EdgeInsets.only(top: 172),
                  padding: EdgeInsets.only(
                    top: 55,
                    left: 23,
                    right: 23,
                  ),
                  child: Column(
                    children: [
                      CactusCard('cactus1.png', 'Red Cactus'),
                      SizedBox(
                        height: 35,
                      ),
                      CactusCard('cactus2.png', 'Fat Cactus'),
                      SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailIdentifyPage(
                                  imageUrl: 'circle_cactus.png',
                                  categoryOne: 'DANGER',
                                  categoryTwo: 'DECORATION',
                                  title: 'Circle Cactus',
                                  kingdomeClass: 'Plantee',
                                  familyClass: 'Cactaceae',
                                  rating: '4.1',
                                  description:
                                      'The word "cactus" derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name orig inally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought. ',
                                );
                              },
                            ),
                          );
                        },
                        child: CactusCard('cactus3.png', 'Circle Cactus'),
                      ),
                      SizedBox(
                        height: 35,
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
