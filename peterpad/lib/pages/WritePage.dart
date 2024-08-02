import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/pages/AddChapterPage.dart';
import 'package:peterpad/pages/EditChapterPage.dart';
import 'package:peterpad/pages/WritingChapterPage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => WritePageState();
}

class WritePageState extends State<WritePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  backgroundColor: background,
                  elevation: 0,
                  toolbarHeight: 100,
                  titleSpacing: 0,
                  floating: true,
                  snap: true,
                  primary: false,
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
                    padding: const EdgeInsets.fromLTRB(25, 40, 25, 20),
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.ROW,
                      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveRowColumnItem(
                          child: Text(
                            "Write",
                            style: TextStyle(
                              fontFamily: 'outfit-semibold',
                              fontSize: 24,
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AddChapterPage(),
                                ),
                              );
                            },
                            child: SvgPicture.asset('assets/LibraryPage/add.svg'),
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
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0), // Use the length of the novelDetails list
                        child: _buildCard(context, writes[index]['details']),
                      );
                    }, childCount: writes.length),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, Map<String, dynamic> novel) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                novel['imagePath'],
                width: 116,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      novel['title'],
                      style: const TextStyle(
                        fontFamily: 'outfit-medium',
                        fontSize: 24,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${novel['chapterPublished']} of ${novel['totalChapters']} Parts Published',
                      style: const TextStyle(
                        fontFamily: 'outfit-regular',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      novel['date'],
                      style: const TextStyle(
                        fontFamily: 'outfit-extra-light',
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildIconText("assets/NovelPage/views.svg", novel['views'].toString()),
                        _buildIconText("assets/WritePage/rating.svg", novel['rating'].toString()),
                        _buildIconText("assets/NovelPage/comments.svg", novel['comments'].toString()),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const EditChapterPage()),
                  );
                },
                child: SvgPicture.asset('assets/WritePage/edit.svg'),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }

  Widget _buildIconText(String imagePath, String text) {
    return Row(
      children: [
        SvgPicture.asset(imagePath),
        const SizedBox(width: 4.0),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'outfit-light',
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
