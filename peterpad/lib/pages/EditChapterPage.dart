import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:peterpad/constants.dart';
import 'package:peterpad/pages/WritePage.dart';

class EditChapterPage extends StatefulWidget {
  const EditChapterPage({super.key});

  @override
  _AddChapterPageState createState() => _AddChapterPageState();
}

class _AddChapterPageState extends State<EditChapterPage> {
  final TextEditingController _synopsisController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();

  String? _selectedGenre;
  String? _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _titleController.text = "Funicula Funicula";
    _synopsisController.text = "Lorem, ipsum dolor sit amet consectetur.";
  }

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
                ResponsiveRowColumnItem(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios, color: Colors.black),
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: GestureDetector(
                    onTap: () {
                      // Add action
                    },
                    child: const Icon(Icons.more_vert, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/WritePage/image.png',
                  width: 116,
                  height: 150,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title input
                      const Text(
                        "Title",
                        style: TextStyle(
                          fontFamily: 'outfit-semibold',
                          fontSize: 20,
                          color: red,
                        ),
                      ),
                      Text(
                        'Type Title',
                        style: TextStyle(
                          fontFamily: 'outfit-regular',
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      const SizedBox(height: 55),
                      TextField(
                        controller: _titleController,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Synopsis input
            const Text(
              'Synopsis',
              style: TextStyle(
                fontFamily: 'outfit-semibold',
                fontSize: 16,
                color: red,
              ),
            ),
            Text(
              "Type Description",
              style: TextStyle(
                fontFamily: 'outfit-regular',
                fontSize: 12,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextField(
              controller: _synopsisController,
            ),
            const SizedBox(height: 16),

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
                        value: "Fantasy",
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedGenre = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '',
                          labelStyle: TextStyle(
                            fontFamily: 'outfit-regular',
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        items: genresDropList.map<DropdownMenuItem<String>>((String genre) {
                          return DropdownMenuItem<String>(
                            value: genre,
                            child: Text(genre),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
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
                        value: "Japanese",
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedLanguage = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '',
                          labelStyle: TextStyle(
                            fontFamily: 'outfit-regular',
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        items: languages.map<DropdownMenuItem<String>>((String language) {
                          return DropdownMenuItem<String>(
                            value: language,
                            child: Text(language),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Chapters header and add button
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

            // Chapters list
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 0.5,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  itemCount: adds.length,
                  itemBuilder: (context, index) {
                    final add = adds[index]['details'];
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 0),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
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
                                    fontSize: 11,
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
                    );
                  },
                ),
              ),
            ),
          ],
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
