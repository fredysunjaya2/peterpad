import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:peterpad/components/CatalogueItem.dart';
import 'package:peterpad/components/CommentPostItem.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  int userId;
  int myId;

  ProfilePage({
    super.key,
    required this.userId,
    required this.myId,
  });

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late Future<List<Map<String, dynamic>>?> futureProfilePosts;
  late Future<List<Map<String, dynamic>>?> futureWorks;
  late Map<String, dynamic> user;
  late TabController _tabController;
  late bool isOtherProfile;
  int tabIndex = 0;

  late ScrollController _scrollController;
  // variable height passed to SliverAppBar expanded height
  late double? _expandedHeight;

  // constant more height that is given to the expandedHeight
  // of the SliverAppBar
  final double _moreHeight = 400;

  @override
  void initState() {
    super.initState();

    futureProfilePosts = Future.value(posts);
    futureWorks = Future.value(recommendedCatalogue);

    _tabController = TabController(length: 2, vsync: this);

    // initialize and add scroll listener
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListen);
    // initially expanded height is full
    _expandedHeight = _moreHeight;

    user = users.firstWhere(
      (element) {
        return element['userId'] == widget.userId;
      },
    );

    if (widget.myId == widget.userId) {
      isOtherProfile = false;
    } else {
      isOtherProfile = true;
    }
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
      });
    } else {
      // if offset is less, keep increasing the height to offset 0
      setState(() {
        _expandedHeight = _moreHeight - offset;
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
              surfaceTintColor: background,
              toolbarHeight: 100,
              expandedHeight: _expandedHeight,
              elevation: 0,
              titleSpacing: 0,
              primary: false,
              floating: _expandedHeight == null ? true : false,
              snap: _expandedHeight == null ? true : false,
              automaticallyImplyLeading: false,
              title: AnimatedOpacity(
                opacity: _expandedHeight != null
                    ? 0
                    : _expandedHeight == null
                        ? 1
                        : _expandedHeight! / _moreHeight,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  height: 100,
                  padding: EdgeInsets.fromLTRB(25, 40, 25, 20),
                  decoration: BoxDecoration(
                    color: background,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 0.5,
                      )
                    ],
                  ),
                  child: widget.userId == widget.myId
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                user["name"],
                                style: TextStyle(
                                  fontFamily: 'outfit-medium',
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/ProfilePage/settings.svg',
                            ),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: SvgPicture.asset(
                                'assets/NotificationPage/back.svg',
                              ),
                            ),
                            Text(
                              user["name"],
                              style: TextStyle(
                                fontFamily: 'outfit-medium',
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            SvgPicture.asset(
                              'assets/ProfilePage/settings.svg',
                            ),
                          ],
                        ),
                ),
              ),
              flexibleSpace: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  AnimatedOpacity(
                    opacity: _expandedHeight != null ? _expandedHeight! / _moreHeight : 0,
                    duration: const Duration(milliseconds: 300),
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
                              user["imagePath"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: AnimatedOpacity(
                      opacity: _expandedHeight != null ? _expandedHeight! / _moreHeight : 0,
                      duration: const Duration(milliseconds: 300),
                      child: Container(
                        width: screenWidth,
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          columnSpacing: 20,
                          children: [
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnSpacing: 5,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        user["profilePic"],
                                        fit: BoxFit.cover,
                                        width: ResponsiveValue<double>(
                                          context,
                                          defaultValue: 200,
                                          conditionalValues: [
                                            Condition.smallerThan(name: DESKTOP, value: screenWidth * 0.35),
                                            Condition.equals(name: DESKTOP, value: screenWidth * 0.35),
                                          ],
                                        ).value,
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      user["name"],
                                      style: TextStyle(
                                        fontFamily: 'outfit-medium',
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowPadding: EdgeInsets.symmetric(
                                  horizontal: 35,
                                ),
                                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.COLUMN,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            user["followerCount"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-medium',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Followers",
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.COLUMN,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            user["followingCount"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-medium',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Following",
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.COLUMN,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            user["worksCount"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-medium',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Works",
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.COLUMN,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            user["collectionsCount"].toString(),
                                            style: TextStyle(
                                              fontFamily: 'outfit-medium',
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Collections",
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.white,
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
                  ),
                  Positioned(
                    // top: 40,
                    left: 25,
                    right: 25,
                    bottom: 320,
                    child: AnimatedOpacity(
                      opacity: _expandedHeight != null ? _expandedHeight! / _moreHeight : 0,
                      duration: const Duration(milliseconds: 300),
                      child: Row(
                        mainAxisAlignment: widget.userId != widget.myId ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                        children: [
                          if (widget.userId != widget.myId) ...[
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
                          ] else ...[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              padding: EdgeInsets.all(5.0),
                              child: SvgPicture.asset(
                                'assets/ProfilePage/settings-white.svg',
                              ),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverSafeArea(
            top: false,
            bottom: false,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnPadding: EdgeInsets.fromLTRB(25, 0, 25, 40),
                    children: [
                      ResponsiveRowColumnItem(
                        child: TabBar(
                          onTap: (value) {
                            setState(() {
                              tabIndex = _tabController.index;
                            });
                          },
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
                              child: Text('About'),
                            ),
                            Tab(
                              child: Text('Posts'),
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
                            ],
                          ),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          children: [
                            if (tabIndex == 0) ...[
                              ResponsiveRowColumnItem(
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveRowColumnType.COLUMN,
                                  columnSpacing: 30,
                                  children: [
                                    ResponsiveRowColumnItem(
                                      child: Text(
                                        user["about"],
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontFamily: 'outfit-light',
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    ResponsiveRowColumnItem(
                                      child: Container(
                                        child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.COLUMN,
                                          columnCrossAxisAlignment: CrossAxisAlignment.start,
                                          columnSpacing: 10,
                                          children: [
                                            // ------------------- ------------------- My Works Text ------------------- -------------------
                                            ResponsiveRowColumnItem(
                                              child: ResponsiveRowColumnItem(
                                                child: Text(
                                                  'My Works',
                                                  style: TextStyle(
                                                    fontFamily: 'outfit-semibold',
                                                    fontSize: 24,
                                                    color: red,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            // ------------------- ------------------- My Works Catalogue ------------------- -------------------
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
                                                      future: futureWorks,
                                                      builder: (context, snapshot) {
                                                        List<Map<String, dynamic>>? works = snapshot.data;

                                                        if (works != null) {
                                                          works.firstWhere(
                                                            (element) {
                                                              return element["userId"] == widget.myId;
                                                            },
                                                          );
                                                          return Wrap(
                                                              spacing: 20,
                                                              direction: Axis.horizontal,
                                                              children: works.map((item) {
                                                                return CatalogueItem(
                                                                  id: item["id"],
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
                                  ],
                                ),
                              ),
                            ] else if (tabIndex == 1) ...[
                              ResponsiveRowColumnItem(
                                child: FutureBuilder(
                                  future: futureProfilePosts,
                                  builder: (context, AsyncSnapshot snapshot) {
                                    List<Map<String, dynamic>>? posts = snapshot.data;
                                    ;

                                    if (posts != null) {
                                      posts = posts.firstWhere(
                                        (element) {
                                          return element['userId'] == widget.myId;
                                        },
                                      )["posts"];
                                      return Wrap(
                                        runSpacing: 15,
                                        children: posts!.map(
                                          (item) {
                                            return CommentPostItem(
                                              profilePic: item["profilePic"],
                                              name: item["name"],
                                              date: item["date"],
                                              comment: item["comment"],
                                              replyCount: item["replyCount"],
                                              userId: item["userId"],
                                              isComment: false,
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
        ],
      ),
    );
  }
}
