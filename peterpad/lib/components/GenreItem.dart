import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:peterpad/pages/ExploreGenrePage.dart';
import 'package:peterpad/pages/HomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenreItem extends StatelessWidget {
  String name;
  String imagePath;

  GenreItem({
    super.key,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    // TODO: implement build
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => ExploreGenrePage(
              name: name,
            ),
          ),
        );
      },
      child: Container(
        width: ResponsiveValue<double>(
          context,
          defaultValue: 195,
          conditionalValues: [
            Condition.equals(name: 'MOBILE', value: screenWidth * 0.41),
            Condition.equals(name: 'TABLET', value: screenWidth * 0.45),
            Condition.equals(name: 'DESKTOP', value: 390),
          ],
        ).value,
        height: ResponsiveValue<double>(
          context,
          defaultValue: 130,
          conditionalValues: [
            Condition.equals(name: 'MOBILE', value: screenHeight * 0.12),
            Condition.equals(name: 'TABLET', value: screenHeight * 0.3),
            Condition.equals(name: 'DESKTOP', value: 260),
          ],
        ).value,
        decoration: BoxDecoration(
          color: red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                imagePath,
                width: ResponsiveValue<double>(
                  context,
                  conditionalValues: [
                    Condition.equals(name: 'MOBILE', value: screenWidth * 0.2),
                    Condition.equals(name: 'TABLET', value: screenWidth * 0.22),
                    Condition.equals(name: 'DESKTOP', value: 195),
                  ],
                ).value,
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              right: 15,
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: 'outfit-medium',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
