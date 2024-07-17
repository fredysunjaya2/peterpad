import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TrendingItem extends StatelessWidget {
  String title;
  String author;
  String imagePath;
  double rating;
  int ranking;

  TrendingItem({
    super.key,
    required this.title,
    required this.author,
    required this.rating,
    required this.ranking,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.start,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      rowSpacing: 20,
      children: [
        // ------------------- ------------------- Trending Now Ranking ------------------- -------------------
        ResponsiveRowColumnItem(
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
            decoration: BoxDecoration(
              color: green,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              (ranking).toString(),
              style: TextStyle(
                fontFamily: 'outfit-regular',
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFit: FlexFit.tight,
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.start,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            rowSpacing: 10,
            children: [
              // ------------------- ------------------- Trending Now Image ------------------- -------------------
              ResponsiveRowColumnItem(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: ResponsiveValue<double>(
                      context,
                      defaultValue: 200,
                      conditionalValues: [
                        Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.25),
                        Condition.equals(name: DESKTOP, value: screenWidth * 0.2),
                      ],
                    ).value,
                  ),
                ),
              ),
              // ------------------- ------------------- Trending Now Desc ------------------- -------------------
              ResponsiveRowColumnItem(
                rowFit: FlexFit.tight,
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnSpacing: 3,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'outfit-medium',
                          fontSize: 24,
                          color: red,
                        ),
                      ),
                    ),
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
      ],
    );
  }
}
