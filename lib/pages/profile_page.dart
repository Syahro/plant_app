import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';
import 'package:plant_app/widget/bottom_navbar.dart';
import 'package:plant_app/widget/profile_menu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 240,
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
              ),
              Positioned(
                top: -100,
                right: -70,
                child: Container(
                  height: 293,
                  width: 293,
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                right: -80,
                child: Container(
                  height: 179,
                  width: 178,
                  decoration: BoxDecoration(
                    color: whiteColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(23, 58, 23, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.chevron_left,
                          color: whiteColor,
                          size: 30,
                        ),
                        Image.asset(
                          'assets/profile.png',
                          width: 79,
                          height: 79,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: whiteColor,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Taylor Swift',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w900,
                          color: whiteColor),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: whiteColor,
                          size: 15,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Los Angeles, California',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: whiteColor.withOpacity(0.8),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(23, 20, 23, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileMenu('ARTICLES', false),
                    ProfileMenu('SPECIES', true),
                    ProfileMenu('LIKES', false),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Your Collected Plants',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: darkColor,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alagatre Plant',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: darkColor,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '02 . 01 . 2019',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: darkGreyColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  height: 320,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        blurRadius: 1,
                        spreadRadius: 2,
                        offset: Offset(1, 1),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/image1.png',
                        width: ((MediaQuery.of(context).size.width - (2 * 23)) /
                                2) -
                            15,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        width: ((MediaQuery.of(context).size.width - (2 * 23)) /
                                2) -
                            15,
                        height: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Image.asset(
                                  'assets/image2.png',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/image3.png',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
