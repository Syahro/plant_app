import 'package:flutter/material.dart';
import 'package:plant_app/pages/detail_articles_page.dart';
import 'package:plant_app/widget/bottom_navbar.dart';

import '../theme.dart';

class ArticlesPage extends StatelessWidget {
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
                          'Articles',
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
                              'Articles',
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
                      Container(
                        height: 265,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 1,
                              spreadRadius: 2,
                              offset: Offset(1, 1),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/articles1.png',
                                width: double.infinity,
                                height: 145,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'David Austin, Who Breathed Life Into the Rose, Is Dead at 92',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: darkColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/profile1.png',
                                        width: 28,
                                        height: 28,
                                      ),
                                      SizedBox(
                                        width: 9,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Shivani Vora',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 11,
                                              color: darkGreyColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            '2019 . 01 . 01',
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: darkGreyColor
                                                    .withOpacity(0.5),
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.bookmark_border,
                                        color: darkGreyColor.withOpacity(0.5),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: darkGreyColor.withOpacity(0.5),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DetailArticlesPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          height: 265,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                blurRadius: 1,
                                spreadRadius: 2,
                                offset: Offset(1, 1),
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/articles2.png',
                                  width: double.infinity,
                                  height: 145,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: darkColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/profile1.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Shivani Vora',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color: darkGreyColor,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(
                                              '2019 . 01 . 01',
                                              style: TextStyle(
                                                  fontSize: 9,
                                                  color: darkGreyColor
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.bookmark_border,
                                          color: darkGreyColor.withOpacity(0.5),
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: darkGreyColor.withOpacity(0.5),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
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
