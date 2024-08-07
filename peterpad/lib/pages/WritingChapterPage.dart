import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

class WritingChapterPage extends StatefulWidget {
  late bool isEdit;

  WritingChapterPage({
    super.key,
    required this.isEdit,
  });

  @override
  State<WritingChapterPage> createState() => _WritingchapterpageState();
}

class _WritingchapterpageState extends State<WritingChapterPage> {
  TextEditingController _titleFieldController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (widget.isEdit) {
      _titleFieldController.text = "Lorem Ipsum Dolor Sit Amet";
    }
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
                  pinned: true,
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
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Chapter 1',
                              style: TextStyle(fontFamily: 'outfit-semibold', fontSize: 24, color: red),
                            )
                          ]),
                        ),
                        ResponsiveRowColumnItem(
                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                            Text(
                              'Save',
                              style: TextStyle(
                                fontFamily: 'outfit-regular',
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.black,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 40),
            child: Column(
              children: [
                TextField(
                  controller: _titleFieldController,
                  obscureText: false,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'outfit-semibold',
                  ),
                  decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: "outfit-light",
                    ),
                  ),
                ),
                if (widget.isEdit) ...[
                  SizedBox(
                    height: 30,
                  ),
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
                      ],
                    ),
                  ),
                ] else ...[
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Type Your Story",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: "outfit-light",
                      ),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // margin: EdgeInsets.only(left: 5, right: 5, bottom: 0),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.only(
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
              height: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navItem("assets/WritingPage/Undo.png"),
                  navItem("assets/WritingPage/Redo.png"),
                  navItem("assets/WritingPage/Alphabet.png"),
                  navItem("assets/WritingPage/Align.png"),
                  navItem("assets/WritingPage/Picture.png"),
                ],
              ),
            ),
          ),
        ),
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
