import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/components/CatalogueItem.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CollectionPage extends StatefulWidget {
  int id;
  String? name;
  int? novelCount;
  String? imagePath;
  String? visibility;
  String? owner;
  String? desc;

  CollectionPage({
    super.key,
    required this.id,
  });

  @override
  State<CollectionPage> createState() => CollectionPageState();
}

class CollectionPageState extends State<CollectionPage> {
  late Future<List<Map<String, dynamic>>?> futureCollectionItem;
  late Map<String, dynamic> collectionDetail;

  late ScrollController _scrollController;
  // variable height passed to SliverAppBar expanded height
  late double? _expandedHeight;

  // constant more height that is given to the expandedHeight
  // of the SliverAppBar
  final double _moreHeight = 500;

  @override
  void initState() {
    super.initState();

    futureCollectionItem = Future.value(exploreCatalogue);

    // initialize and add scroll listener
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListen);
    // initially expanded height is full
    _expandedHeight = _moreHeight;

    collectionDetail = collections.firstWhere((element) {
      return element['id'] == widget.id;
    });

    collectionDetail = collectionDetail['details'];

    widget.name = collectionDetail['name'];
    widget.novelCount = collectionDetail['novelCount'];
    widget.imagePath = collectionDetail['imagePath'];
    widget.visibility = collectionDetail['visibility'];
    widget.owner = collectionDetail['owner'];
    widget.desc = collectionDetail['desc'];
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
              primary: false,
              floating: true,
              snap: true,
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
                    widget.name!,
                    style: TextStyle(
                      fontFamily: 'outfit-medium',
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                titlePadding: EdgeInsets.only(bottom: 25),
                background: Stack(
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
                                widget.imagePath!,
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
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          columnSpacing: 20,
                          children: [
                            ResponsiveRowColumnItem(
                              child: Text(
                                widget.name!,
                                style: TextStyle(
                                  fontFamily: 'outfit-medium',
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowSpacing: 75,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.COLUMN,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: SvgPicture.asset('assets/CollectionPage/novelCount.svg'),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            widget.novelCount.toString() + ' Novels',
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 18,
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
                                          child: SvgPicture.asset('assets/CollectionPage/visibility.svg'),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            widget.visibility!,
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 18,
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
                                          child: SvgPicture.asset('assets/CollectionPage/owner.svg'),
                                        ),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            widget.owner!,
                                            style: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 18,
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
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(25, 15, 25, 40),
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnSpacing: 30,
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            widget.desc!,
                            style: TextStyle(
                              fontFamily: 'outfit-light',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: FutureBuilder(
                            future: futureCollectionItem,
                            builder: (context, snapshot) {
                              List<Map<String, dynamic>>? novels = snapshot.data;

                              if (novels != null) {
                                return Wrap(
                                  runSpacing: 20,
                                  spacing: 20,
                                  children: novels.map((item) {
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
                    ),
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
