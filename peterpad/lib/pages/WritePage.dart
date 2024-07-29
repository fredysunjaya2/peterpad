import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peterpad/pages/AddChapterPage.dart';
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
      appBar: AppBar(
        backgroundColor: background,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        elevation: 0,
        titleSpacing: 0,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: background,
            padding: const EdgeInsets.fromLTRB(25, 40, 25, 20),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ResponsiveRowColumnItem(
                  child: Text(
                    'Write',
                    style: TextStyle(
                      fontFamily: 'outfit-semibold',
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddChapterPage()),
                      );
                    },
                    child: const Icon(Icons.add, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: writes.length, // Use the length of the novelDetails list
        itemBuilder: (context, index) {
          final novel = writes[index]['details'];
          return _buildCard(context, novel);
        },
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
                        _buildIconText(
                            Icons.visibility, novel['views'].toString()),
                        _buildIconText(Icons.star, novel['rating'].toString()),
                        _buildIconText(
                            Icons.comment, novel['comments'].toString()),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Edit action
                },
                child: const Icon(Icons.edit, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20.0, color: green),
        const SizedBox(width: 4.0),
        Text(
          text,
          style: const TextStyle(
            fontFamily: 'outfit-light',
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
