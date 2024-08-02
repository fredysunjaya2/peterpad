import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  late ScrollController _scrollController;
  // variable height passed to SliverAppBar expanded height
  late double? _expandedHeight;
  bool toolbarHeight = true;

  // constant more height that is given to the expandedHeight
  // of the SliverAppBar
  final double _moreHeight = 450;
  ValueNotifier<bool> isScrolledNotifier = ValueNotifier(true);
  // bool _showBottomBar = true;

  @override
  void initState() {
    super.initState();

    // initialize and add scroll listener
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListen);
    // initially expanded height is full
    _expandedHeight = _moreHeight;
  }

  @override
  dispose() {
    isScrolledNotifier.dispose();
    isScrolledNotifier.dispose();
    // dispose the scroll listener and controller
    _scrollController.removeListener(_scrollListen);
    _scrollController.dispose();
    super.dispose();
  }

  void _showBars() {
    isScrolledNotifier.value = !isScrolledNotifier.value;
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
      appBar: AppBar(
        backgroundColor: background,
        toolbarHeight: 50,
        flexibleSpace: ValueListenableBuilder<bool>(
          valueListenable: isScrolledNotifier,
          builder: (context, isScrolled, child) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: isScrolled ? 100 : 0,
              child: Container(
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
                padding: EdgeInsets.fromLTRB(25, 40, 25, 20),
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.ROW,
                  rowSpacing: 30,
                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Funiculi Funicula',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: 'outfit-semibold', fontSize: 24, color: red),
                          )
                        ],
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.list,
                            color: Colors.black,
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      body: GestureDetector(
        onTap: _showBars,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              // Add Your Code here.
              isScrolledNotifier.value = !innerBoxIsScrolled;
            });

            return [];
            // ------------------- ------------------- App Bar ------------------- -------------------
          },
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 15),
                Text('Chapter 1:', style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'outfit')),
                Text('A New Life', style: TextStyle(fontSize: 20, fontFamily: 'outfit-semibold')),
                SizedBox(height: 30),
                RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'outfit-light',
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in.",
                          ),
                          TextSpan(text: "\n\n"),
                          TextSpan(
                            text:
                                "Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. ",
                          ),
                          TextSpan(text: "\n\n"),
                          TextSpan(
                            text:
                                "Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
                          ),
                          TextSpan(text: "\n\n"),
                          TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. ",
                          ),
                          TextSpan(text: "\n\n"),
                          TextSpan(
                            text:
                                "Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. ",
                          ),
                        ])),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<bool>(
        valueListenable: isScrolledNotifier,
        builder: (context, isScrolled, child) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: isScrolled ? 85 : 0,
            child: Container(
              // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
              decoration: BoxDecoration(
                color: background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: BottomAppBar(
                  elevation: 0.0,
                  color: background, // Match your background color
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        navItem('assets/ReadingPage/star.png'),
                        navItem('assets/ReadingPage/sun.png'),
                        navItem('assets/ReadingPage/font.png'),
                        navItem('assets/ReadingPage/back.png'),
                        navItem('assets/ReadingPage/next.png'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget navItem(String assetPath) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Image.asset(
          assetPath,
          width: 24,
          height: 24,
          color: Colors.red,
        ),
      ),
    );
  }
}
