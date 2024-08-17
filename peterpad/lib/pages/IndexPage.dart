import 'package:flutter/material.dart';
import 'package:peterpad/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:peterpad/pages/ExplorePage.dart';
import 'package:peterpad/pages/HomePage.dart';
import 'package:peterpad/pages/LibraryPage.dart';
import 'package:peterpad/pages/ProfilePage.dart';
import 'package:peterpad/pages/WritePage.dart';
import 'package:peterpad/components/my_flutter_app_icons.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomePage(),
      ExplorePage(),
      LibraryPage(),
      WritePage(),
      ProfilePage(userId: 1, myId: 1),
    ];

    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 0.5,
              color: Colors.black.withOpacity(.2),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
              rippleColor: red,
              hoverColor: red,
              tabBackgroundColor: red,
              color: Colors.black,
              activeColor: Colors.white,
              gap: 10,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 7),
              duration: Duration(milliseconds: 400),
              textStyle: TextStyle(
                fontFamily: 'outfit-light',
                fontSize: 20,
                color: Colors.white,
              ),
              tabs: [
                GButton(
                  icon: MyFlutterApp.vector_2,
                  text: 'Home',
                ),
                GButton(
                  icon: MyFlutterApp.iconoir_book_stack,
                  text: 'Browse',
                ),
                GButton(
                  icon: MyFlutterApp.fluent_library_20_regular,
                  text: 'Library',
                ),
                GButton(
                  icon: MyFlutterApp.system_uicons_write,
                  text: 'Write',
                ),
                GButton(
                  icon: MyFlutterApp.icon_park_outline_more,
                  text: 'More',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      body: screens[_selectedIndex],
    );
  }
}
