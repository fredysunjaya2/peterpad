import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:peterpad/pages/AddChapterPage.dart';
import 'package:peterpad/pages/EditChapterPage.dart';
import 'package:peterpad/pages/ExplorePage.dart';
import 'package:peterpad/pages/CollectionPage.dart';
import 'package:peterpad/pages/ExploreGenrePage.dart';
import 'package:peterpad/pages/HomePage.dart';
import 'package:peterpad/pages/LandingPage.dart';
import 'package:peterpad/pages/LibraryPage.dart';
import 'package:peterpad/pages/LoginPage.dart';
import 'package:peterpad/pages/NotificationsPage.dart';
import 'package:peterpad/pages/NovelPage.dart';
import 'package:peterpad/pages/WritePage.dart';
import 'package:peterpad/pages/WritingChapterPage.dart';
import 'package:peterpad/test.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 767, name: MOBILE),
          const Breakpoint(start: 768, end: 1023, name: TABLET),
          const Breakpoint(start: 1024, end: double.infinity, name: DESKTOP),
        ],
        child: child!,
      ),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: EditChapterPage(),
      // home: NovelPage(
      //   id: 1,
      // ),
    );
  }
}
