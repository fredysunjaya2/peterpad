import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NotificationItem extends StatelessWidget {
  String profilePic;
  String name;
  String time;
  String desc;
  String imagePath;
  bool isPost;

  NotificationItem({
    super.key,
    required this.profilePic,
    required this.name,
    required this.time,
    required this.desc,
    required this.imagePath,
    required this.isPost,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.start,
      rowCrossAxisAlignment: CrossAxisAlignment.start,
      layout: ResponsiveRowColumnType.ROW,
      rowSpacing: 15,
      children: [
        ResponsiveRowColumnItem(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              profilePic,
              fit: BoxFit.cover,
              width: ResponsiveValue<double>(
                context,
                defaultValue: 200,
                conditionalValues: [
                  Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.1),
                  Condition.equals(name: DESKTOP, value: screenWidth * 0.15),
                ],
              ).value,
            ),
          ),
        ),
        ResponsiveRowColumnItem(
          rowFit: FlexFit.tight,
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            columnMainAxisAlignment: MainAxisAlignment.start,
            children: [
              ResponsiveRowColumnItem(
                child: Text(
                  name,
                  style: TextStyle(
                    fontFamily: 'outfit-semibold',
                    fontSize: 16,
                    color: red,
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: Text(
                  time,
                  style: TextStyle(
                    fontFamily: 'outfit-extra-light',
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: RichText(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'outfit-regular',
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                          text: 'New Chapter - ',
                          style: TextStyle(
                            fontFamily: 'outfit-semibold',
                          )),
                      TextSpan(
                        text: desc,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ResponsiveRowColumnItem(
          child: Visibility(
            visible: !isPost,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: ResponsiveValue<double>(
                  context,
                  defaultValue: 200,
                  conditionalValues: [
                    Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.2),
                    Condition.equals(name: DESKTOP, value: screenWidth * 0.2),
                  ],
                ).value,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
