import 'package:flutter/material.dart';
import 'package:peterpad/components/CatalogueItem.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreGenrePage extends StatefulWidget {
  String name;

  ExploreGenrePage({
    super.key,
    required this.name,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ExploreGenrePageState();
  }
}

class ExploreGenrePageState extends State<ExploreGenrePage> {
  late Future<List<Map<String, dynamic>>?> futureExploreGenre;

  @override
  void initState() {
    super.initState();

    futureExploreGenre = Future.value(exploreCatalogue);
  }

  @override
  Widget build(BuildContext context) {
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
                        rowSpacing: 30,
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
                              widget.name,
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
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          columnPadding: EdgeInsets.fromLTRB(25, 10, 25, 40),
                          columnCrossAxisAlignment: CrossAxisAlignment.start,
                          columnSpacing: 20,
                          children: [
                            // ------------------- ------------------- Filter Sort ------------------- -------------------
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowMainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      rowCrossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      rowSpacing: 15,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                              'assets/ExplorePage/filter.svg'),
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
                                      rowCrossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      rowSpacing: 15,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                              'assets/ExplorePage/sort.svg'),
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
                            // ------------------- ------------------- Catalogue ------------------- -------------------
                            ResponsiveRowColumnItem(
                              child: FutureBuilder(
                                future: futureExploreGenre,
                                builder: (context, snapshot) {
                                  List<Map<String, dynamic>>?
                                      exploreGenreCatalogues = snapshot.data;

                                  if (exploreGenreCatalogues != null) {
                                    return Wrap(
                                      direction: Axis.horizontal,
                                      spacing: 20,
                                      runSpacing: 20,
                                      children:
                                          exploreGenreCatalogues.map((item) {
                                        return CatalogueItem(
                                          title: item['title'],
                                          author: item['author'],
                                          rating: item['rating'],
                                          imagePath: item['imagePath'],
                                        );
                                      }).toList(),
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
      ),
    );
  }
}
