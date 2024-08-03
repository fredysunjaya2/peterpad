import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:peterpad/pages/WritingChapterPage.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:peterpad/pages/WritePage.dart';

class AddChapterPage extends StatefulWidget {
  bool isAdd;
  int? id;

  AddChapterPage({
    super.key,
    required this.isAdd,
    this.id,
  });

  @override
  _AddChapterPageState createState() => _AddChapterPageState();
}

class _AddChapterPageState extends State<AddChapterPage> {
  final TextEditingController _synopsisController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  String? _selectedGenre;
  String? _selectedLanguage;
  late Map<String, dynamic> editNovel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    if (!widget.isAdd) {
      editNovel = writes.firstWhere(
        (element) {
          return element['id'] == widget.id;
        },
      )["details"];

      _titleController.text = editNovel["title"];
      _synopsisController.text = editNovel["synopsis"];
      _selectedGenre = editNovel["genre"];
      _selectedLanguage = editNovel["language"];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  backgroundColor: background,
                  surfaceTintColor: background,
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
                          child: GestureDetector(
                            onTap: () => Navigator.of(context).pop(),
                            child: SvgPicture.asset(
                              'assets/NotificationPage/back.svg',
                            ),
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: SvgPicture.asset(
                            'assets/WritingPage/more.svg',
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
          child: Builder(builder: (context) {
            return CustomScrollView(
              slivers: [
                SliverOverlapInjector(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/WritePage/image.png',
                                    width: 116,
                                  ),
                                  const SizedBox(width: 16),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Title input
                                        const Text(
                                          'Title',
                                          style: TextStyle(
                                            fontFamily: 'outfit-semibold',
                                            fontSize: 20,
                                            color: red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        TextField(
                                          controller: _titleController,
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(5),
                                            hintText: "Type Title",
                                            hintStyle: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.black.withOpacity(0.3),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black.withOpacity(0.5),
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: red,
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'outfit-regular',
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 125,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Title input
                                        const Text(
                                          'Synopsis',
                                          style: TextStyle(
                                            fontFamily: 'outfit-semibold',
                                            fontSize: 16,
                                            color: red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        TextField(
                                          controller: _synopsisController,
                                          maxLines: 4,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.all(5),
                                            hintText: "Type Title",
                                            hintStyle: TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                              color: Colors.black.withOpacity(0.3),
                                            ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.black.withOpacity(0.5),
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: red,
                                                width: 1,
                                              ),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'outfit-regular',
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Genre',
                                        style: TextStyle(
                                          fontFamily: 'outfit-semibold',
                                          fontSize: 16,
                                          color: red,
                                        ),
                                      ),
                                      DropdownButtonFormField<String>(
                                        value: _selectedGenre,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedGenre = newValue;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Choose Genre',
                                          hintStyle: TextStyle(
                                            fontFamily: 'outfit-regular',
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                        items: genresDropList.map<DropdownMenuItem<String>>((String genre) {
                                          return DropdownMenuItem<String>(
                                            value: genre,
                                            child: Text(
                                              genre,
                                              style: TextStyle(
                                                fontFamily: 'outfit-regular',
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 60,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Language',
                                        style: TextStyle(
                                          fontFamily: 'outfit-semibold',
                                          fontSize: 16,
                                          color: red,
                                        ),
                                      ),
                                      DropdownButtonFormField<String>(
                                        value: _selectedLanguage,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedLanguage = newValue;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Choose Language',
                                          hintStyle: TextStyle(
                                            fontFamily: 'outfit-regular',
                                            fontSize: 14,
                                            color: Colors.black.withOpacity(0.3),
                                          ),
                                        ),
                                        items: languages.map<DropdownMenuItem<String>>((String language) {
                                          return DropdownMenuItem<String>(
                                            value: language,
                                            child: Text(
                                              language,
                                              style: TextStyle(
                                                fontFamily: 'outfit-regular',
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Chapters',
                                  style: TextStyle(fontFamily: 'outfit-semibold', fontSize: 20, color: red),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.add),
                                  onPressed: () {
                                    // Add new chapter
                                  },
                                ),
                              ],
                            ),
                            if (!widget.isAdd) ...[
                              // Chapters list
                              Container(
                                child: ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) => Divider(
                                    thickness: 0.5,
                                    color: Colors.black.withOpacity(0.5),
                                    height: 20,
                                  ),
                                  itemCount: adds.length,
                                  padding: EdgeInsets.only(bottom: 0),
                                  itemBuilder: (context, index) {
                                    final add = adds[index]['details'];
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => WritingChapterPage(),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        child: ListTile(
                                          contentPadding: EdgeInsets.all(0),
                                          minTileHeight: double.minPositive,
                                          minVerticalPadding: 0,
                                          title: Text(
                                            'Chapter ${add['chapter']} : ${add['title']}',
                                            style: const TextStyle(
                                              fontFamily: 'outfit-regular',
                                              fontSize: 14,
                                            ),
                                          ),
                                          subtitle: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    add['date'],
                                                    style: TextStyle(
                                                      fontFamily: 'outfit-extra-light',
                                                      fontSize: 12,
                                                      color: Colors.black.withOpacity(0.5),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 40),
                                                  _buildIconText(Icons.star, add['rating'].toString()),
                                                ],
                                              ),
                                            ],
                                          ),
                                          trailing: Icon(
                                            add['downloaded'] ? Icons.cloud_done_outlined : Icons.cloud_download_outlined,
                                            color: add['downloaded'] ? green : green,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ]
                          ],
                        ),
                      );
                    },
                    childCount: 1,
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16.0, color: green),
        const SizedBox(width: 4.0),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'outfit-light',
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
