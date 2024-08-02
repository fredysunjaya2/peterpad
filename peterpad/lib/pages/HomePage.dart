import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:peterpad/components/CatalogueItem.dart';
import 'package:peterpad/components/TrendingItem.dart';
import 'package:peterpad/constants.dart';
import 'package:peterpad/pages/NotificationsPage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Future<List<Map<String, dynamic>>?> futureRecommended;
  late Future<List<Map<String, dynamic>>?> futureTrending;

  @override
  void initState() {
    super.initState();

    futureRecommended = Future.value(recommendedCatalogue);
    futureTrending = Future.value(trendingCatalogue);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    // TODO: implement build
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ResponsiveRowColumn(
          columnPadding: EdgeInsets.fromLTRB(25, 40, 25, 40),
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            // ------------------- ------------------- Header ------------------- -------------------
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ------------------- ------------------- Welcome ------------------- -------------------
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      layout: ResponsiveRowColumnType.COLUMN,
                      children: [
                        ResponsiveRowColumnItem(
                          child: ResponsiveRowColumnItem(
                            child: Text(
                              'Hi,',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'outfit-semibold',
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Lofi Girl',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'outfit-semibold',
                              color: red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ------------------- ------------------- Notification ------------------- -------------------
                  ResponsiveRowColumnItem(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => NotificationsPage(),
                          ),
                        );
                      },
                      child: SvgPicture.asset('assets/HomePage/notification.svg'),
                    ),
                  ),
                ],
              ),
            ),
            // ------------------- ------------------- Search Bar ------------------- -------------------
            ResponsiveRowColumnItem(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                child: TextField(
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Row(
                      children: [
                        SvgPicture.asset('assets/HomePage/search.svg'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Search Books',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontFamily: 'outfit-light',
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: red,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: red,
                        width: 2,
                      ),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    constraints: const BoxConstraints(
                      maxHeight: 50,
                    ),
                  ),
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                columnSpacing: 30,
                children: [
                  // ------------------- ------------------- Currently Reading ------------------- -------------------
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnSpacing: 10,
                      children: [
                        // ------------------- ------------------- Currently Reading Text ------------------- -------------------
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Currently Reading',
                            style: TextStyle(
                              fontFamily: 'outfit-semibold',
                              fontSize: 24,
                              color: red,
                            ),
                          ),
                        ),
                        // ------------------- ------------------- Currently Reading Content ------------------- -------------------
                        ResponsiveRowColumnItem(
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            rowSpacing: 15,
                            children: [
                              // ------------------- ------------------- Currently Reading Content Image ------------------- -------------------
                              ResponsiveRowColumnItem(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/HomePage/image1.png',
                                    fit: BoxFit.cover,
                                    width: ResponsiveValue<double>(
                                      context,
                                      defaultValue: 100,
                                      conditionalValues: [
                                        Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.35),
                                        Condition.equals(name: DESKTOP, value: screenWidth * 0.3),
                                      ],
                                    ).value,
                                  ),
                                ),
                              ),
                              // ------------------- ------------------- Currently Reading Content Box ------------------- -------------------
                              ResponsiveRowColumnItem(
                                child: Container(
                                  padding: EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  width: ResponsiveValue<double>(
                                    context,
                                    defaultValue: 200,
                                    conditionalValues: [
                                      Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.49),
                                      Condition.equals(name: DESKTOP, value: screenWidth * 0.4),
                                    ],
                                  ).value,
                                  child: ResponsiveRowColumn(
                                    columnCrossAxisAlignment: CrossAxisAlignment.start,
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    children: [
                                      ResponsiveRowColumnItem(
                                        child: Text(
                                          'Funiculi Funicula',
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
                                        child: Text(
                                          'Toshikazu Kawaguchi',
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
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                          child: Text(
                                            'Chapter 10 / 100',
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
                                        child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.ROW,
                                          rowSpacing: 10,
                                          children: [
                                            ResponsiveRowColumnItem(
                                              child: Expanded(
                                                child: FAProgressBar(
                                                  animatedDuration: Duration.zero,
                                                  maxValue: 100,
                                                  currentValue: 75,
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
                                      ResponsiveRowColumnItem(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            top: 10,
                                          ),
                                          alignment: Alignment.center,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pushReplacement(
                                                MaterialPageRoute(
                                                  builder: (BuildContext context) => const HomePage(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                                              child: Text(
                                                'Continue',
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
                  // ------------------- ------------------- Recommended For You ------------------- -------------------
                  ResponsiveRowColumnItem(
                    child: Container(
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        columnSpacing: 10,
                        children: [
                          // ------------------- ------------------- Recommended For You Text ------------------- -------------------
                          ResponsiveRowColumnItem(
                            child: ResponsiveRowColumnItem(
                              child: Text(
                                'Recommended For You',
                                style: TextStyle(
                                  fontFamily: 'outfit-semibold',
                                  fontSize: 24,
                                  color: red,
                                ),
                              ),
                            ),
                          ),
                          // ------------------- ------------------- Recommended For You Catalogue ------------------- -------------------
                          ResponsiveRowColumnItem(
                            child: Container(
                              height: ResponsiveValue<double>(
                                context,
                                defaultValue: 258,
                                conditionalValues: [
                                  Condition.equals(name: 'Mobile', value: 258),
                                  Condition.equals(name: 'TABLET', value: 450),
                                  Condition.equals(name: 'DESKTOP', value: screenHeight * 0.75),
                                ],
                              ).value,
                              child: OverflowBox(
                                maxWidth: screenWidth,
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.only(
                                    right: 25,
                                    left: 25,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  child: FutureBuilder(
                                    future: futureRecommended,
                                    builder: (context, snapshot) {
                                      List<Map<String, dynamic>>? recommendations = snapshot.data;

                                      if (recommendations != null) {
                                        return Wrap(
                                            spacing: 20,
                                            direction: Axis.horizontal,
                                            children: recommendations.map((item) {
                                              return CatalogueItem(
                                                id: item['id'],
                                                title: item['title'],
                                                author: item['author'],
                                                rating: item['rating'],
                                                imagePath: item['imagePath'],
                                              );
                                            }).toList());
                                      } else {
                                        return const Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ------------------- ------------------- Trending Now ------------------- -------------------
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnSpacing: 10,
                      children: [
                        // ------------------- ------------------- Trending Now Text ------------------- -------------------
                        ResponsiveRowColumnItem(
                          child: ResponsiveRowColumnItem(
                            child: Text(
                              'Trending Now',
                              style: TextStyle(
                                fontFamily: 'outfit-semibold',
                                fontSize: 24,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                        // ------------------- ------------------- Trending Now Content ------------------- -------------------
                        ResponsiveRowColumnItem(
                          child: Container(
                            height: ResponsiveValue<double>(
                              context,
                              defaultValue: 390,
                              conditionalValues: [
                                Condition.equals(name: 'MOBILE', value: 390),
                                Condition.equals(name: 'TABLET', value: 900),
                                Condition.equals(name: 'DESKTOP', value: screenHeight * 0.75),
                              ],
                            ).value,
                            child: OverflowBox(
                              maxWidth: screenWidth,
                              child: SingleChildScrollView(
                                padding: EdgeInsets.only(
                                  right: 25,
                                  left: 25,
                                ),
                                scrollDirection: Axis.horizontal,
                                child: FutureBuilder(
                                  future: futureTrending,
                                  builder: (context, snapshot) {
                                    List<Map<String, dynamic>>? trendings = snapshot.data;

                                    if (trendings != null) {
                                      return Wrap(
                                          spacing: 10,
                                          runSpacing: 20,
                                          direction: Axis.vertical,
                                          children: trendings.map((item) {
                                            return Container(
                                              width: ResponsiveValue<double>(
                                                context,
                                                defaultValue: 300,
                                                conditionalValues: [
                                                  Condition.equals(name: 'MOBILE', value: screenWidth * 0.75),
                                                  Condition.equals(name: 'TABLET', value: screenWidth * 0.8),
                                                  Condition.equals(name: 'DESKTOP', value: screenWidth * 0.7),
                                                ],
                                              ).value,
                                              height: ResponsiveValue<double>(
                                                context,
                                                defaultValue: 123,
                                                conditionalValues: [
                                                  Condition.equals(name: 'MOBILE', value: 123.0),
                                                  Condition.equals(name: 'TABLET', value: 293.0),
                                                  Condition.equals(name: 'DESKTOP', value: ((screenHeight * 0.7) / 3.0) - 30.0),
                                                ],
                                              ).value,
                                              child: TrendingItem(
                                                id: item['id'],
                                                title: item['title'],
                                                author: item['author'],
                                                rating: item['rating'],
                                                ranking: item['ranking'],
                                                imagePath: item['imagePath'],
                                              ),
                                            );
                                          }).toList());
                                    } else {
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ),
                              ),
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
    );
  }
}
