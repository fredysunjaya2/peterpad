import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class HistoryItem extends StatelessWidget {
  String title;
  int currentChapter;
  int maxChapter;
  String time;
  double progress;
  String imagePath;

  HistoryItem({
    super.key,
    required this.title,
    required this.currentChapter,
    required this.maxChapter,
    required this.time,
    required this.progress,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      rowCrossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // ------------------- ------------------- History Item ------------------- -------------------
        ResponsiveRowColumnItem(
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowSpacing: 15,
            children: [
              // ------------------- ------------------- History Item Image ------------------- -------------------
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
                        Condition.smallerThan(
                            name: DESKTOP, value: screenWidth * 0.2),
                        Condition.equals(
                            name: DESKTOP, value: screenWidth * 0.2),
                      ],
                    ).value,
                  ),
                ),
              ),
              // ------------------- ------------------- History Item Desc ------------------- -------------------
              ResponsiveRowColumnItem(
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  children: [
                    ResponsiveRowColumnItem(
                      child: ResponsiveRowColumn(
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Text(
                              title,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'outfit-medium',
                                fontSize: 24,
                                color: red,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: Text(
                                'Chapter ' +
                                    currentChapter.toString() +
                                    ' / ' +
                                    maxChapter.toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: 'outfit-light',
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Text(
                              time,
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
                            child: Container(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowSpacing: 10,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Container(
                                      width: ResponsiveValue<double>(
                                        context,
                                        conditionalValues: [
                                          Condition.equals(
                                              name: 'MOBILE',
                                              value: screenWidth * 0.4),
                                          Condition.equals(
                                              name: 'TABLET',
                                              value: screenWidth * 0.5),
                                          Condition.equals(
                                              name: 'DESKTOP',
                                              value: screenWidth * 0.6),
                                        ],
                                      ).value,
                                      child: FAProgressBar(
                                        animatedDuration: Duration.zero,
                                        maxValue: 100,
                                        currentValue: progress,
                                        borderRadius: BorderRadius.circular(20),
                                        direction: Axis.horizontal,
                                        size: 15,
                                        progressColor: green,
                                        border: Border.all(
                                          color: green,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      '75%',
                                      style: TextStyle(
                                        fontFamily: 'outfit-regular',
                                        fontSize: 12,
                                        color: green,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
        // ------------------- ------------------- History Delete ------------------- -------------------
        ResponsiveRowColumnItem(
          child: SvgPicture.asset('assets/LibraryPage/delete.svg'),
        ),
      ],
    );
  }
}
