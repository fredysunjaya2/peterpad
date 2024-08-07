import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/components/NotificationItem.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({
    super.key,
  });

  @override
  State<NotificationsPage> createState() => NotificationsPageState();
}

class NotificationsPageState extends State<NotificationsPage> {
  late Future<List<Map<String, dynamic>>?> futureNotificationGroup;
  late Future<List<Map<String, dynamic>>?> futureNotificationItem;

  @override
  void initState() {
    super.initState();

    futureNotificationGroup = Future.value(notifications);
    futureNotificationItem = Future.value(notifications);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: background,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            // ------------------- ------------------- App Bar ------------------- -------------------
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  backgroundColor: background,
                  surfaceTintColor: background,
                  toolbarHeight: 100,
                  elevation: 0,
                  titleSpacing: 0,
                  floating: true,
                  snap: true,
                  primary: false,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: innerBoxIsScrolled ? Colors.black.withOpacity(0.2) : Colors.black.withOpacity(0),
                          blurRadius: 10,
                          spreadRadius: 0.5,
                        )
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(25, 40, 25, 20),
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.ROW,
                      rowSpacing: 30,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveRowColumnItem(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: SvgPicture.asset(
                              'assets/NotificationPage/back.svg',
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Text(
                            'Notifications',
                            style: TextStyle(
                              fontFamily: 'outfit-semibold',
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) {
              return CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  // ------------------- ------------------- Notification Group By Date ------------------- -------------------
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          children: [
                            ResponsiveRowColumnItem(
                              child: FutureBuilder(
                                future: futureNotificationGroup,
                                builder: (context, snapshot) {
                                  List<Map<String, dynamic>>? notificationGroups = snapshot.data;

                                  if (notificationGroups != null) {
                                    return Padding(
                                      padding: EdgeInsets.fromLTRB(25, 10, 25, 40),
                                      child: Wrap(
                                        runSpacing: 25,
                                        children: notificationGroups.map((item) {
                                          return ResponsiveRowColumn(
                                            layout: ResponsiveRowColumnType.COLUMN,
                                            columnCrossAxisAlignment: CrossAxisAlignment.start,
                                            columnSpacing: 10,
                                            children: [
                                              ResponsiveRowColumnItem(
                                                child: Text(
                                                  item['date'],
                                                  style: TextStyle(
                                                    fontFamily: 'outfit-regular',
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                              ResponsiveRowColumnItem(
                                                // ------------------- ------------------- Notification Items ------------------- -------------------
                                                child: FutureBuilder(
                                                  future: futureNotificationItem,
                                                  builder: (context, snapshot) {
                                                    List<Map<String, dynamic>> notificationItems = item["notificationItems"];

                                                    if (notificationItems != null) {
                                                      return Wrap(
                                                          runSpacing: 15,
                                                          children: notificationItems.map((itemDetail) {
                                                            return Container(
                                                              child: NotificationItem(
                                                                profilePic: itemDetail['profilePic'],
                                                                name: itemDetail['name'],
                                                                time: itemDetail['time'],
                                                                desc: itemDetail['desc'],
                                                                imagePath: itemDetail['imagePath'],
                                                                isPost: itemDetail['isPost'],
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
                                            ],
                                          );
                                        }).toList(),
                                      ),
                                    );
                                  } else {
                                    return CircularProgressIndicator();
                                  }
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
