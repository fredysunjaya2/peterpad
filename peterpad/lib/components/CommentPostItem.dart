import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peterpad/pages/ProfilePage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';

class CommentPostItem extends StatelessWidget {
  String profilePic;
  String name;
  int userId;
  String date;
  String comment;
  int? likeCount;
  int replyCount;
  bool isComment;

  CommentPostItem({
    super.key,
    required this.profilePic,
    required this.name,
    required this.userId,
    required this.date,
    required this.comment,
    this.likeCount,
    required this.replyCount,
    required this.isComment,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.ROW,
      rowCrossAxisAlignment: CrossAxisAlignment.start,
      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ResponsiveRowColumnItem(
          rowFit: FlexFit.tight,
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowSpacing: 10,
            children: [
              ResponsiveRowColumnItem(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(
                          userId: userId,
                          myId: 1,
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      profilePic,
                      fit: BoxFit.cover,
                      width: ResponsiveValue<double>(
                        context,
                        defaultValue: 200,
                        conditionalValues: [
                          Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.1),
                          Condition.equals(name: DESKTOP, value: screenWidth * 0.1),
                        ],
                      ).value,
                    ),
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFit: FlexFit.tight,
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  columnSpacing: 5,
                  children: [
                    ResponsiveRowColumnItem(
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveRowColumnItem(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(
                                      userId: userId,
                                      myId: 1,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                name,
                                style: TextStyle(
                                  fontFamily: 'outfit-semibold',
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Text(
                              date,
                              style: TextStyle(
                                fontFamily: 'outfit-extra-light',
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Text(
                              comment,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'outfit-regular',
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Text(
                              "Reply",
                              style: TextStyle(
                                fontFamily: 'outfit-medium',
                                fontSize: 10,
                                color: green,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Visibility(
                              visible: replyCount > 0 ? true : false,
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: SvgPicture.asset('assets/NovelPage/replyblock.svg'),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      "View " + replyCount.toString() + " replies",
                                      style: TextStyle(
                                        fontFamily: 'outfit-light',
                                        fontSize: 10,
                                        color: Colors.black.withOpacity(0.5),
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
        ResponsiveRowColumnItem(
          child: Visibility(
            visible: isComment,
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                  child: SvgPicture.asset('assets/NovelPage/like.svg'),
                ),
                ResponsiveRowColumnItem(
                  child: Visibility(
                    visible: isComment,
                    child: Text(
                      isComment ? likeCount!.toString() : "0",
                      style: TextStyle(
                        fontFamily: 'outfit-regular',
                        fontSize: 10,
                        color: green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
