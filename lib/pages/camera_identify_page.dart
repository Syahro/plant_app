import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';

class CameraIdentifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 37),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: whiteColor,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'AUTO',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                          fontSize: 10,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '#',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                          color: whiteColor,
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.animation,
                        color: whiteColor,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/flower.png',
                        width: 40,
                        height: 40,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 63,
                            width: 63,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: whiteColor,
                              ),
                              borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.loop,
                        color: whiteColor,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'PHOTO',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w300,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
