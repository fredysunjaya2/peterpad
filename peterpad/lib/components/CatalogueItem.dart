import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatalogueItem extends StatelessWidget {
  String title;
  String author;
  double rating;
  String imagePath;

  CatalogueItem({
    super.key,
    required this.title,
    required this.author,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    // TODO: implement build
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ResponsiveValue<double>(
          context,
          defaultValue: 200,
          conditionalValues: [
            Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.4),
            Condition.equals(name: DESKTOP, value: 400),
          ],
        ).value,
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ------------------- ------------------- Catalogue Image ------------------- -------------------
            ResponsiveRowColumnItem(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            // ------------------- ------------------- Catalogue Title ------------------- -------------------
            ResponsiveRowColumnItem(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'outfit-medium',
                  fontSize: 20,
                  color: red,
                ),
              ),
            ),
            // ------------------- ------------------- Catalogue Desc ------------------- -------------------
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
                rowSpacing: 10,
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveRowColumnItem(
                    child: Text(
                      author,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'outfit-extra-light',
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/star.svg'),
                        Text(
                          rating.toString(),
                          style: TextStyle(
                            fontFamily: 'outfit-light',
                            fontSize: 8,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
