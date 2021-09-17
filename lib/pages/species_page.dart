import 'package:flutter/material.dart';
import 'package:plant_app/widget/alphabet_filter.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/content_title.dart';

import '../theme.dart';

class SpeciesPage extends StatelessWidget {
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
                          'Species',
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
                              'Species',
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ContentTitle('C', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CACTUS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CISTUS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CAESALPINIA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CINNAMOMUM', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CIRSIUM', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('CISSUS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('D', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DIERAMA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DIGITALIS', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DAHLIA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('DAPHNE', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('E', true),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('ECHINACEA', false),
                          SizedBox(
                            height: 15,
                          ),
                          ContentTitle('ECHINOPS', false),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AlphabetFilter('#'),
                          SizedBox(height: 2),
                          AlphabetFilter('A'),
                          SizedBox(height: 2),
                          AlphabetFilter('B'),
                          SizedBox(height: 2),
                          AlphabetFilter('C'),
                          SizedBox(height: 2),
                          AlphabetFilter('D'),
                          SizedBox(height: 2),
                          AlphabetFilter('E'),
                          SizedBox(height: 2),
                          AlphabetFilter('F'),
                          SizedBox(height: 2),
                          AlphabetFilter('G'),
                          SizedBox(height: 2),
                          AlphabetFilter('H'),
                          SizedBox(height: 2),
                          AlphabetFilter('I'),
                          SizedBox(height: 2),
                          AlphabetFilter('J'),
                          SizedBox(height: 2),
                          AlphabetFilter('K'),
                          SizedBox(height: 2),
                          AlphabetFilter('L'),
                          SizedBox(height: 2),
                          AlphabetFilter('M'),
                          SizedBox(height: 2),
                          AlphabetFilter('N'),
                          SizedBox(height: 2),
                          AlphabetFilter('O'),
                          SizedBox(height: 2),
                          AlphabetFilter('P'),
                          SizedBox(height: 2),
                          AlphabetFilter('Q'),
                          SizedBox(height: 2),
                          AlphabetFilter('R'),
                          SizedBox(height: 2),
                          AlphabetFilter('S'),
                          SizedBox(height: 2),
                          AlphabetFilter('T'),
                          SizedBox(height: 2),
                          AlphabetFilter('U'),
                          SizedBox(height: 2),
                          AlphabetFilter('V'),
                          SizedBox(height: 2),
                          AlphabetFilter('W'),
                          SizedBox(height: 2),
                          AlphabetFilter('X'),
                          SizedBox(height: 2),
                          AlphabetFilter('Y'),
                          SizedBox(height: 2),
                          AlphabetFilter('Z'),
                          SizedBox(height: 2),
                        ],
                      )
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
