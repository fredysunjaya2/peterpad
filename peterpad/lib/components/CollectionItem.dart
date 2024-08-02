import 'package:flutter/material.dart';
import 'package:peterpad/pages/CollectionPage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peterpad/constants.dart';

class CollectionItem extends StatelessWidget {
  int id;
  String name;
  int novelCount;
  String imagePath;

  CollectionItem({
    super.key,
    required this.id,
    required this.name,
    required this.novelCount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CollectionPage(
              id: id,
            ),
          ),
        );
      },
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
            // ------------------- ------------------- Catalogue Desc ------------------- -------------------
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnMainAxisAlignment: MainAxisAlignment.start,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontFamily: 'outfit-medium',
                              fontSize: 20,
                              color: red,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            novelCount.toString() + '   Novels',
                            style: TextStyle(
                              fontFamily: 'outfit-light',
                              fontSize: 12,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: SvgPicture.asset('assets/LibraryPage/more.svg'),
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
