import 'package:flutter/material.dart';
import 'package:peterpad/pages/LoginPage.dart';
import 'package:peterpad/pages/RegisterPage.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    // TODO: implement build
    return Scaffold(
      backgroundColor: background,
      body: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        columnPadding: EdgeInsets.fromLTRB(0, 60, 0, 0),
        columnSpacing: 50,
        children: [
          ResponsiveRowColumnItem(
            child: Image.asset(
              "assets/logo.png",
              width: screenWidth * 0.5,
            ),
          ),
          ResponsiveRowColumnItem(
            child: Image.asset(
              "assets/LandingPage/image1.png",
              width: screenWidth * 0.75,
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                const ResponsiveRowColumnItem(
                  child: Text(
                    'Read Your Way',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'outfit-semibold',
                      color: red,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: Container(
                    width: screenWidth * 0.75,
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: const Text(
                      'Customize your own reading screen. \n Read comfortably day and night with your choice.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'outfit-light',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ResponsiveRowColumnItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) => const LoginPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(45, 13, 45, 13),
                      child: Text(
                        'Sign In',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: red,
                          fontFamily: 'outfit-regular',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        side: BorderSide(
                          color: red,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const RegisterPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(38, 13, 38, 13),
                      child: Text(
                        'Register',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'outfit-regular',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      backgroundColor: red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
