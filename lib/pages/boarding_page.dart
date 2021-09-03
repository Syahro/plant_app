import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';
import 'package:plant_app/widget/onboard_bullet.dart';

class BoardingPage extends StatelessWidget {
  final double widthImage;
  final double heightImage;
  final String imageUrl;
  final String title;
  final String subTitle;
  final bool isBullOne;
  final bool isBullTwo;
  final bool isBullThree;
  final String textButton;
  final String isAction;

  BoardingPage({
    this.widthImage,
    this.heightImage,
    this.imageUrl,
    this.title,
    this.subTitle,
    this.isBullOne,
    this.isBullTwo,
    this.isBullThree,
    this.textButton,
    this.isAction,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageUrl,
              width: widthImage,
              height: heightImage,
            ),
            SizedBox(
              height: 63,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: darkColor,
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: darkGreyColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnboardBullet(isBullOne),
                SizedBox(
                  width: 9,
                ),
                OnboardBullet(isBullTwo),
                SizedBox(
                  width: 9,
                ),
                OnboardBullet(isBullThree),
              ],
            ),
            SizedBox(
              height: 54,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    (isAction == "nextOne")
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return BoardingPage(
                                  widthImage: 286.0,
                                  heightImage: 277.14,
                                  imageUrl: 'assets/illustration2.png',
                                  title: 'Learn Many Plants Species',
                                  subTitle:
                                      'Let\'s learn about the many plant species that\nexist in this world',
                                  isBullOne: false,
                                  isBullTwo: true,
                                  isBullThree: false,
                                  textButton: 'NEXT',
                                  isAction: 'nextLast',
                                );
                              },
                            ),
                          )
                        : (isAction == "nextLast")
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return BoardingPage(
                                      widthImage: 317.0,
                                      heightImage: 272.14,
                                      imageUrl: 'assets/illustration3.png',
                                      title: 'Read Many Articles About Plant',
                                      subTitle:
                                          'Let\'s learn more about beautiful plants and read\nmany articles about plants and gardening',
                                      isBullOne: false,
                                      isBullTwo: false,
                                      isBullThree: true,
                                      textButton: 'LOGIN',
                                      isAction: 'signIn',
                                    );
                                  },
                                ),
                              )
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {},
                                ),
                              );
                  },
                  color: lightGreenColor,
                  child: Text(
                    textButton,
                    style: TextStyle(
                      fontSize: 15,
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
