import 'dart:ui';
// import 'dart:ui_web';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:peterpad/components/ChapterItem.dart';
import 'package:peterpad/components/CommentPostItem.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NovelPage extends StatefulWidget {
  int id;

  NovelPage({
    super.key,
    required this.id,
  });

  @override
  State<NovelPage> createState() => NovelPageState();
}

class NovelPageState extends State<NovelPage>
    with SingleTickerProviderStateMixin {
  late Future<List<Map<String, dynamic>>?> futureNovelChapters;
  late Future<List<Map<String, dynamic>>?> futureNovelComments;
  late Map<String, dynamic> novelDetail;
  late TabController _tabController;

  late ScrollController _scrollController;
  // variable height passed to SliverAppBar expanded height
  late double? _expandedHeight;

  // constant more height that is given to the expandedHeight
  // of the SliverAppBar
  final double _moreHeight = 450;

  double asd = 0;

  @override
  void initState() {
    super.initState();

    futureNovelChapters = Future.value(chapters);
    futureNovelComments = Future.value(comments);

    _tabController = TabController(length: 3, vsync: this);

    // initialize and add scroll listener
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListen);
    // initially expanded height is full
    _expandedHeight = _moreHeight;

    novelDetail = novelDetails.firstWhere(
      (element) {
        return element['id'] == widget.id;
      },
    );

    novelDetail = novelDetail['details'];
  }

  @override
  dispose() {
    // dispose the scroll listener and controller
    _scrollController.removeListener(_scrollListen);
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListen() {
    final offset = _scrollController.offset;
    if (offset > _moreHeight) {
      // if offset is more height, disable expanded height
      setState(() {
        _expandedHeight = null;
        asd = 0;
      });
    } else {
      // if offset is less, keep increasing the height to offset 0
      setState(() {
        _expandedHeight = _moreHeight - offset;
        asd = offset;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: background,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverSafeArea(
            top: false,
            sliver: SliverAppBar(
              backgroundColor: background,
              toolbarHeight: 100,
              expandedHeight: _expandedHeight,
              elevation: 0,
              titleSpacing: 0,
              floating: true,
              snap: true,
              primary: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: AnimatedOpacity(
                  opacity: _expandedHeight != null
                      ? 0
                      : _expandedHeight == null
                          ? 1
                          : _expandedHeight! / _moreHeight,
                  duration: const Duration(milliseconds: 300),
                  child: Text(
                    novelDetail["title"],
                    style: TextStyle(
                      fontFamily: 'outfit-medium',
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                titlePadding: EdgeInsets.only(bottom: 25),
                background: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    AnimatedOpacity(
                      opacity: _expandedHeight != null
                          ? _expandedHeight! / _moreHeight
                          : 0,
                      duration: const Duration(milliseconds: 300),
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10),
                              ),
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(
                                  sigmaX: 5,
                                  sigmaY: 5,
                                ),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    Colors.black.withOpacity(0.2),
                                    BlendMode.darken,
                                  ),
                                  child: Transform.scale(
                                    scale: 1.05,
                                    child: Image.asset(
                                      novelDetail["imagePath"],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: _expandedHeight != null
                                          ? _expandedHeight! * 0.65
                                          : 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: _expandedHeight != null ? _expandedHeight! * 0.3 : 0,
                      child: AnimatedOpacity(
                        opacity: _expandedHeight != null
                            ? _expandedHeight! / _moreHeight
                            : 0,
                        duration: const Duration(milliseconds: 300),
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          columnCrossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ResponsiveRowColumnItem(
                              child: Image.asset(novelDetail["imagePath"]),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnPadding: EdgeInsets.only(
                                  top: 10,
                                  bottom: 15,
                                ),
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      novelDetail["title"],
                                      style: TextStyle(
                                        fontFamily: 'outfit-semibold',
                                        fontSize: 24,
                                        color: red,
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      novelDetail["author"],
                                      style: TextStyle(
                                        fontFamily: 'outfit-extra-light',
                                        fontSize: 14,
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowSpacing: 50,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      rowSpacing: 7,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                            'assets/NovelPage/views.svg',
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            NumberFormat.compact()
                                                .format(novelDetail["views"]),
                                            style: TextStyle(
                                              fontFamily: 'outfit-light',
                                              fontSize: 12,
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
                                      rowSpacing: 7,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                            'assets/star.svg',
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            novelDetail["rating"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-light',
                                              fontSize: 12,
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
                                      rowSpacing: 7,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                            'assets/NovelPage/chapters.svg',
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            novelDetail["chapters"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-light',
                                              fontSize: 12,
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
                                      rowSpacing: 7,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset(
                                            'assets/NovelPage/comments.svg',
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            NumberFormat.compact().format(
                                                novelDetail["comments"]),
                                            style: TextStyle(
                                              fontFamily: 'outfit-light',
                                              fontSize: 12,
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 25,
                      right: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              padding: EdgeInsets.all(5.0),
                              child: SvgPicture.asset(
                                'assets/CollectionPage/back-white.svg',
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            padding: EdgeInsets.all(5.0),
                            child: SvgPicture.asset(
                              'assets/CollectionPage/more-white.svg',
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
          SliverSafeArea(
            top: false,
            bottom: false,
            sliver: SliverPadding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnPadding: EdgeInsets.fromLTRB(25, 0, 25, 40),
                      children: [
                        ResponsiveRowColumnItem(
                          child: TabBar(
                            onTap: (value) {},
                            controller: _tabController,
                            labelColor: red,
                            unselectedLabelColor: Colors.black.withOpacity(0.5),
                            labelStyle: TextStyle(
                              fontFamily: 'outfit-semibold',
                              fontSize: 16,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontFamily: 'outfit-regular',
                              fontSize: 14,
                            ),
                            indicator: BoxDecoration(
                              border: BorderDirectional(
                                bottom: BorderSide(
                                  color: red,
                                  width: 2,
                                ),
                              ),
                            ),
                            labelPadding: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            indicatorPadding: EdgeInsets.only(bottom: 10),
                            dividerColor: Colors.transparent,
                            tabs: [
                              Tab(
                                child: Text('Synopsis'),
                              ),
                              Tab(
                                child: Text('Chapters'),
                              ),
                              Tab(
                                child: Text('Review'),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: SizedBox(
                            height: 1,
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                SizedBox(),
                                SizedBox(),
                                SizedBox(),
                              ],
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.COLUMN,
                            children: [
                              if (_tabController.index == 0) ...[
                                ResponsiveRowColumnItem(
                                  child: Text(
                                    novelDetail["synopsis"],
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontFamily: 'outfit-light',
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ] else if (_tabController.index == 1) ...[
                                ResponsiveRowColumnItem(
                                  child: FutureBuilder(
                                    future: futureNovelChapters,
                                    builder: (context, AsyncSnapshot snapshot) {
                                      List<Map<String, dynamic>>? chapters =
                                          snapshot.data;
                                      ;

                                      if (chapters != null) {
                                        chapters = chapters!.firstWhere(
                                          (element) {
                                            return element['novelId'] ==
                                                widget.id;
                                          },
                                        )["chapters"];
                                        return Wrap(
                                          runSpacing: 10,
                                          children: chapters!.map(
                                            (item) {
                                              return ChapterItem(
                                                name: item["name"],
                                                date: item["date"],
                                                rating: item["rating"],
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
                              ] else if (_tabController.index == 2) ...[
                                ResponsiveRowColumnItem(
                                  child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnSpacing: 20,
                                    children: [
                                      ResponsiveRowColumnItem(
                                        child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.ROW,
                                          rowSpacing: 15,
                                          children: [
                                            ResponsiveRowColumnItem(
                                              child: Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    floatingLabelBehavior:
                                                        FloatingLabelBehavior
                                                            .never,
                                                    label: Row(
                                                      children: [
                                                        Text(
                                                          'Type Comment',
                                                          style: TextStyle(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.3),
                                                            fontFamily:
                                                                'outfit-light',
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      borderSide:
                                                          const BorderSide(
                                                        color: red,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      borderSide:
                                                          const BorderSide(
                                                        color: red,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsets.fromLTRB(
                                                            15, 0, 10, 0),
                                                    constraints:
                                                        const BoxConstraints(
                                                      maxHeight: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            ResponsiveRowColumnItem(
                                              child: Container(
                                                padding: EdgeInsets.all(6),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  border: Border.all(
                                                    color: red,
                                                    width: 2,
                                                  ),
                                                ),
                                                child: SvgPicture.asset(
                                                  'assets/NovelPage/send.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ResponsiveRowColumnItem(
                                        child: FutureBuilder(
                                          future: futureNovelComments,
                                          builder: (context,
                                              AsyncSnapshot snapshot) {
                                            List<Map<String, dynamic>>?
                                                comments = snapshot.data;
                                            ;

                                            if (comments != null) {
                                              comments = comments!.firstWhere(
                                                (element) {
                                                  return element['novelId'] ==
                                                      widget.id;
                                                },
                                              )["comments"];
                                              return Wrap(
                                                runSpacing: 15,
                                                children: comments!.map(
                                                  (item) {
                                                    return CommentPostItem(
                                                      profilePic:
                                                          item["profilePic"],
                                                      name: item["name"],
                                                      date: item["date"],
                                                      comment: item["comment"],
                                                      likeCount:
                                                          item["likeCount"],
                                                      replyCount:
                                                          item["replyCount"],
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
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
