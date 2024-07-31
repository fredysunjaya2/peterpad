import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ChapterItem extends StatelessWidget {
  String name;
  String date;
  double rating;

  ChapterItem({
    super.key,
    required this.name,
    required this.date,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'outfit-regular',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.ROW,
                  rowSpacing: 20,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Text(
                        date,
                        style: TextStyle(
                          fontFamily: 'outfit-extra-light',
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                        child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.ROW,
                      rowSpacing: 3,
                      children: [
                        ResponsiveRowColumnItem(
                          child: SvgPicture.asset(
                            'assets/star.svg',
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            rating.toString(),
                            style: TextStyle(
                              fontFamily: 'outfit-light',
                              fontSize: 8,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )),
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
