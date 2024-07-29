import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:peterpad/components/CatalogueItem.dart';
import 'package:peterpad/components/GenreItem.dart';
import 'package:peterpad/pages/NotificationsPage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExplorePageState();
  }
}

class ExplorePageState extends State<ExplorePage> {
  late Future<List<Map<String, dynamic>>?> futureExplore;
  late Future<List<Map<String, dynamic>>?> futureGenre;

  @override
  void initState() {
    super.initState();

    futureExplore = Future.value(exploreCatalogue);
    futureGenre = Future.value(genres);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    // TODO: implement build
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
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
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
                                unselectedLabelColor: Colors.black.withOpacity(0.5),
                                dividerColor: Colors.transparent,
                                indicator: BoxDecoration(),
                                isScrollable: true,
                                physics: NeverScrollableScrollPhysics(),
                                tabAlignment: TabAlignment.start,
                                padding: EdgeInsets.zero,
                                indicatorPadding: EdgeInsets.zero,
                                labelPadding: EdgeInsets.zero,
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
                                        'Browse',
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
                                        'Genre',
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
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // ------------------- ------------------- Browse Page ------------------- -------------------
              SafeArea(
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
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ResponsiveRowColumn(
                                columnPadding: EdgeInsets.fromLTRB(25, 10, 25, 40),
                                columnCrossAxisAlignment: CrossAxisAlignment.start,
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnSpacing: 20,
                                children: [
                                  // ------------------- ------------------- Search Bar ------------------- -------------------
                                  ResponsiveRowColumnItem(
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
                                  // ------------------- ------------------- Filter Sort ------------------- -------------------
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: ResponsiveRowColumn(
                                            layout: ResponsiveRowColumnType.ROW,
                                            rowCrossAxisAlignment: CrossAxisAlignment.center,
                                            rowSpacing: 15,
                                            children: [
                                              ResponsiveRowColumnItem(
                                                child: SvgPicture.asset('assets/ExplorePage/filter.svg'),
                                              ),
                                              ResponsiveRowColumnItem(
                                                child: Text(
                                                  'Filter',
                                                  style: TextStyle(
                                                    fontFamily: 'outfit-light',
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: ResponsiveRowColumn(
                                            layout: ResponsiveRowColumnType.ROW,
                                            rowCrossAxisAlignment: CrossAxisAlignment.center,
                                            rowSpacing: 15,
                                            children: [
                                              ResponsiveRowColumnItem(
                                                child: SvgPicture.asset('assets/ExplorePage/sort.svg'),
                                              ),
                                              ResponsiveRowColumnItem(
                                                child: Text(
                                                  'Sort',
                                                  style: TextStyle(
                                                    fontFamily: 'outfit-light',
                                                    fontSize: 16,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // ------------------- ------------------- Explore Catalogue ------------------- -------------------
                                  ResponsiveRowColumnItem(
                                    child: FutureBuilder(
                                      future: futureExplore,
                                      builder: (context, snapshot) {
                                        List<Map<String, dynamic>>? novels = snapshot.data;

                                        if (novels != null) {
                                          return Wrap(
                                              spacing: 20,
                                              runSpacing: 20,
                                              direction: Axis.horizontal,
                                              children: novels.map((item) {
                                                return CatalogueItem(
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
              // ------------------- ------------------- Genre Page ------------------- -------------------
              SafeArea(
                top: false,
                bottom: false,
                child: Builder(
                  builder: (context) {
                    // ------------------- ------------------- Genre Selection ------------------- -------------------
                    return CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverOverlapInjector(
                          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              return ResponsiveRowColumn(
                                columnPadding: EdgeInsets.fromLTRB(25, 10, 25, 40),
                                columnCrossAxisAlignment: CrossAxisAlignment.start,
                                layout: ResponsiveRowColumnType.COLUMN,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: FutureBuilder(
                                      future: futureGenre,
                                      builder: (context, snapshot) {
                                        List<Map<String, dynamic>>? genres = snapshot.data;

                                        if (genres != null) {
                                          return Wrap(
                                              spacing: 20,
                                              runSpacing: 20,
                                              direction: Axis.horizontal,
                                              children: genres.map((item) {
                                                return GenreItem(
                                                  name: item['name'],
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
