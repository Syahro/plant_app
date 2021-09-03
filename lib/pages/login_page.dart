import 'package:flutter/material.dart';
import 'package:plant_app/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 61,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.chevron_left,
                  color: darkGreyColor.withOpacity(0.4),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: darkColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Let’s Learn More About Plants',
                    style: TextStyle(
                      fontSize: 16,
                      color: darkGreyColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: darkGreyColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taylor Swift ',
                        style: TextStyle(
                          fontSize: 17,
                          color: darkColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.done,
                        color: lightGreenColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Divider(
                    color: lightGreenColor,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: darkGreyColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Divider(
                    color: darkGreyColor.withOpacity(0.7),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: darkGreyColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 11,
                          color: darkGreyColor.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 11,
                          color: darkGreyColor.withOpacity(0.7),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {},
                      color: lightGreenColor,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Don’t Have Account?\t',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: darkGreyColor.withOpacity(0.6),
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: lightGreenColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
