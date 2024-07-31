import 'package:flutter/material.dart';
import 'package:peterpad/components/CollectionItem.dart';
import 'package:peterpad/components/HistoryItem.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  State<LibraryPage> createState() => LibraryPageState();
}

class LibraryPageState extends State<LibraryPage> {
  late Future<List<Map<String, dynamic>>?> futureHistory;
  late Future<List<Map<String, dynamic>>?> futureHistoryItem;
  late Future<List<Map<String, dynamic>>?> futureCollection;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    futureHistory = Future.value(histories);
    futureHistoryItem = Future.value(histories);
    futureCollection = Future.value(collections);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: background,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              // ------------------- ------------------- App Bar ------------------- -------------------
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: SliverSafeArea(
                  top: false,
                  sliver: SliverAppBar(
                    backgroundColor: background,
                    toolbarHeight: 100,
                    elevation: 0,
                    titleSpacing: 0,
                    floating: true,
                    snap: true,
                    primary: false,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        color: background,
                        padding: const EdgeInsets.fromLTRB(25, 40, 25, 20),
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ResponsiveRowColumnItem(
                              child: TabBar(
                                labelColor: Colors.black,
                                unselectedLabelColor:
                                    Colors.black.withOpacity(0.5),
                                dividerColor: Colors.transparent,
                                indicator: BoxDecoration(),
                                isScrollable: true,
                                physics: NeverScrollableScrollPhysics(),
                                tabAlignment: TabAlignment.start,
                                padding: EdgeInsets.zero,
                                indicatorPadding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.zero,
                                onTap: (index) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                tabs: [
                                  Tab(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        right: 15,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color: Colors.black,
                                            width: 1,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'History',
                                        style: TextStyle(
                                          fontFamily: 'outfit-semibold',
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: 15,
                                      ),
                                      child: Text(
                                        'Collection',
                                        style: TextStyle(
                                          fontFamily: 'outfit-semibold',
                                          fontSize: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowMainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Visibility(
                                      visible: currentIndex == 0 ? true : false,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                            'assets/LibraryPage/clearall.svg'),
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: Visibility(
                                      visible: currentIndex == 1 ? true : false,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: SvgPicture.asset(
                                            'assets/LibraryPage/add.svg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // ------------------- ------------------- History ------------------- -------------------
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        // ------------------- ------------------- History Group By Date ------------------- -------------------
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: FutureBuilder(
                                      future: futureHistory,
                                      builder: (context, snapshot) {
                                        List<Map<String, dynamic>>? histories =
                                            snapshot.data;

                                        if (histories != null) {
                                          return Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                25, 10, 25, 40),
                                            child: Wrap(
                                              runSpacing: 25,
                                              children: histories.map((item) {
                                                return ResponsiveRowColumn(
                                                  layout:
                                                      ResponsiveRowColumnType
                                                          .COLUMN,
                                                  columnCrossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  columnSpacing: 10,
                                                  children: [
                                                    ResponsiveRowColumnItem(
                                                      child: Text(
                                                        item['date'],
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'outfit-regular',
                                                          fontSize: 16,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    ResponsiveRowColumnItem(
                                                      // ------------------- ------------------- History Items ------------------- -------------------
                                                      child: FutureBuilder(
                                                        future:
                                                            futureHistoryItem,
                                                        builder: (context,
                                                            snapshot) {
                                                          List<
                                                                  Map<String,
                                                                      dynamic>>
                                                              historyItems =
                                                              item[
                                                                  "historyItems"];

                                                          if (historyItems !=
                                                              null) {
                                                            return Wrap(
                                                                runSpacing: 15,
                                                                children:
                                                                    historyItems
                                                                        .map(
                                                                            (itemDetail) {
                                                                  return HistoryItem(
                                                                    title: itemDetail[
                                                                        'title'],
                                                                    currentChapter:
                                                                        itemDetail[
                                                                            'currentChapter'],
                                                                    maxChapter:
                                                                        itemDetail[
                                                                            'maxChapter'],
                                                                    time: itemDetail[
                                                                        'time'],
                                                                    progress:
                                                                        itemDetail[
                                                                            'progress'],
                                                                    imagePath:
                                                                        itemDetail[
                                                                            'imagePath'],
                                                                  );
                                                                }).toList());
                                                          } else {
                                                            return const Center(
                                                              child:
                                                                  CircularProgressIndicator(),
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
                            childCount: 1,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // ------------------- ------------------- Collection ------------------- -------------------
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    return CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverOverlapInjector(
                          handle:
                              NestedScrollView.sliverOverlapAbsorberHandleFor(
                                  context),
                        ),
                        // ------------------- ------------------- Collection Catalogue ------------------- -------------------
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnPadding:
                                    EdgeInsets.fromLTRB(25, 10, 25, 40),
                                columnCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: FutureBuilder(
                                      future: futureCollection,
                                      builder: (context, snapshot) {
                                        List<Map<String, dynamic>>?
                                            collections = snapshot.data;

                                        if (collections != null) {
                                          return Wrap(
                                            spacing: 20,
                                            runSpacing: 20,
                                            children: collections.map(
                                              (item) {
                                                return CollectionItem(
                                                  name: item['details']['name'],
                                                  novelCount: item['details']
                                                      ['novelCount'],
                                                  imagePath: item['details']
                                                      ['imagePath'],
                                                  visibility: item['details']
                                                      ['visibility'],
                                                  owner: item['details']
                                                      ['owner'],
                                                  desc: item['details']['desc'],
                                                );
                                              },
                                            ).toList(),
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
                            childCount: 1,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
