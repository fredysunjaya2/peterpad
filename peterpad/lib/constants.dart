import 'dart:ui';

import 'package:flutter/material.dart';

const Color red = Color(0xffE63946);
const Color green = Color(0xff20A39E);
const Color background = Color(0xffF1FAEE);

List<Map<String, dynamic>> recommendedCatalogue = [
  {
    "id": 1,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
    "userId": 1,
  },
  {
    "id": 2,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 2",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
    "userId": 1,
  },
  {
    "id": 3,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 3",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
    "userId": 1,
  },
  {
    "id": 4,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
    "userId": 2,
  },
  {
    "id": 5,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
    "userId": 2,
  },
];

List<Map<String, dynamic>> trendingCatalogue = [
  {
    "id": 1,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "ranking": 1,
    "rating": 4.5,
  },
  {
    "id": 2,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 2",
    "author": "Toshikazu Kawaguchi",
    "ranking": 2,
    "rating": 4.5,
  },
  {
    "id": 3,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 3",
    "author": "Toshikazu Kawaguchi",
    "ranking": 3,
    "rating": 4.5,
  },
  {
    "id": 4,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "ranking": 4,
    "rating": 4.5,
  },
  {
    "id": 5,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "ranking": 5,
    "rating": 4.5,
  },
  {
    "id": 6,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "ranking": 6,
    "rating": 4.5,
  },
  {
    "id": 7,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 2",
    "author": "Toshikazu Kawaguchi",
    "ranking": 7,
    "rating": 4.5,
  },
  {
    "id": 8,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 3",
    "author": "Toshikazu Kawaguchi",
    "ranking": 8,
    "rating": 4.5,
  },
  {
    "id": 9,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "ranking": 9,
    "rating": 4.5,
  },
];

List<Map<String, dynamic>> notifications = [
  {
    "date": "23 May 2024",
    "notificationItems": [
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": false,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": false,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": false,
      },
    ],
  },
  {
    "date": "22 May 2024",
    "notificationItems": [
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
    ],
  },
  {
    "date": "22 May 2024",
    "notificationItems": [
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
      {
        "imagePath": "assets/HomePage/image1.png",
        "profilePic": "assets/NotificationPage/profile.png",
        "name": "Lofi Girl",
        "time": "22:15",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        "isPost": true,
      },
    ],
  },
];

List<Map<String, dynamic>> exploreCatalogue = [
  {
    "id": 1,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 2,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 2",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 3,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 3",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 4,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 5,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 6,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 7,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 2",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 8,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula 3",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 9,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
  {
    "id": 10,
    "imagePath": "assets/HomePage/image1.png",
    "title": "Funiculi Funicula",
    "author": "Toshikazu Kawaguchi",
    "rating": 4.5,
  },
];

List<Map<String, dynamic>> genres = [
  {
    'name': 'Action',
    'imagePath': 'assets/ExplorePage/genre(1).png',
  },
  {
    'name': 'Adventure',
    'imagePath': 'assets/ExplorePage/genre(2).png',
  },
  {
    'name': 'Comedy',
    'imagePath': 'assets/ExplorePage/genre(3).png',
  },
  {
    'name': 'Drama',
    'imagePath': 'assets/ExplorePage/genre(4).png',
  },
  {
    'name': 'Fantasy',
    'imagePath': 'assets/ExplorePage/genre(1).png',
  },
  {
    'name': 'Historical Fiction',
    'imagePath': 'assets/ExplorePage/genre(2).png',
  },
  {
    'name': 'Horror',
    'imagePath': 'assets/ExplorePage/genre(3).png',
  },
  {
    'name': 'Mystery',
    'imagePath': 'assets/ExplorePage/genre(4).png',
  },
  {
    'name': 'Non-Fiction',
    'imagePath': 'assets/ExplorePage/genre(1).png',
  },
  {
    'name': 'Romance',
    'imagePath': 'assets/ExplorePage/genre(2).png',
  },
  {
    'name': 'Science Fiction',
    'imagePath': 'assets/ExplorePage/genre(3).png',
  },
  {
    'name': 'Thriller',
    'imagePath': 'assets/ExplorePage/genre(4).png',
  },
];

List<Map<String, dynamic>> histories = [
  {
    'date': '23 May 2024',
    'historyItems': [
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
    ],
  },
  {
    'date': '22 May 2024',
    'historyItems': [
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
      {
        'title': 'Funiculi Funicula',
        'currentChapter': 10,
        'maxChapter': 100,
        'time': '22:15',
        'progress': 75,
        "imagePath": "assets/HomePage/image1.png",
      },
    ],
  },
];

List<Map<String, dynamic>> collections = [
  {
    "id": 1,
    "details": {
      'name': 'Downloaded',
      'novelCount': 1,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 2,
    "details": {
      'name': 'My Collection 1',
      'novelCount': 10,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad 2',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 3,
    "details": {
      'name': 'My Collection 2',
      'novelCount': 15,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad 3',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 4,
    "details": {
      'name': 'My Collection 3',
      'novelCount': 7,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 5,
    "details": {
      'name': 'My Collection 1',
      'novelCount': 10,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad 2',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 6,
    "details": {
      'name': 'My Collection 2',
      'novelCount': 15,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad 3',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
  {
    "id": 7,
    "details": {
      'name': 'My Collection 3',
      'novelCount': 7,
      'imagePath': 'assets/LibraryPage/image1.png',
      'visibility': 'Public',
      'owner': 'Peterpad',
      'desc': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut.'
    },
  },
];

List<Map<String, dynamic>> novelDetails = [
  {
    "id": 1,
    "details": {
      "title": "Funiculi Funicula",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 2,
    "details": {
      "title": "Funiculi Funicula 2",
      "author": "Toshikazu Kawaguchi",
      "views": 500000,
      "rating": 5.0,
      "chapters": 20,
      "comments": 5000,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 3,
    "details": {
      "title": "Funiculi Funicula 3",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 4,
    "details": {
      "title": "Funiculi Funicula 4",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 5,
    "details": {
      "title": "Funiculi Funicula 5",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 6,
    "details": {
      "title": "Funiculi Funicula 6",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 7,
    "details": {
      "title": "Funiculi Funicula 7",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 8,
    "details": {
      "title": "Funiculi Funicula 8",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 9,
    "details": {
      "title": "Funiculi Funicula 9",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
  {
    "id": 10,
    "details": {
      "title": "Funiculi Funicula 10",
      "author": "Toshikazu Kawaguchi",
      "views": 300000,
      "rating": 4.5,
      "chapters": 30,
      "comments": 3300,
      "synopsis":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
      "imagePath": "assets/HomePage/image1.png",
    },
  },
];

List<Map<String, dynamic>> chapters = [
  {
    "novelId": 1,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 2,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 3,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 4,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 5,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 6,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 7,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 8,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 9,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
  {
    "novelId": 10,
    "chapters": [
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 5: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 1: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 2: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 3: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
      {
        "name": "Chapter 4: Lorem Ipsum Dolor",
        "date": "18 Aug 2024",
        "rating": 4.5,
      },
    ],
  },
];

List<Map<String, dynamic>> comments = [
  {
    "novelId": 1,
    "comments": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
    ],
  },
  {
    "novelId": 2,
    "comments": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
    ],
  },
  {
    "novelId": 3,
    "comments": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 0,
        "likeCount": 100,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment": "Lorem Ipsum Dolor Sit Amet",
        "replyCount": 6,
        "likeCount": 100,
      },
    ],
  },
];

List<Map<String, dynamic>> edit = [
  {
    "details": {
      "title": "Funiculi Funicula",
      "sinopsis": "hai sayang",
      "genre": "Fantasy",
      "language": "Indonesian",
    },
  },
];

List<Map<String, dynamic>> writes = [
  {
    "id": 1,
    "details": {
      "title": "Funiculi Funicula",
      "chapterPublished": 2,
      "totalChapters": 5,
      "date": "23 Aug 2024",
      "views": "300K",
      "rating": 4.5,
      "comments": "3.3K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 2,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 3,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 4,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 5,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 6,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 7,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 8,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 9,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
  {
    "id": 10,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapterPublished": 3,
      "totalChapters": 5,
      "date": "23 Sept 2024",
      "views": "400K",
      "rating": 4.2,
      "comments": "3.5K",
      "imagePath": "assets/WritePage/image.png",
    },
  },
];

List<String> genresDropList = ['Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy', 'Horror'];

List<String> languages = [
  'Indonesian',
  'English',
  'Japanese',
];

List<Map<String, dynamic>> adds = [
  {
    "id": 1,
    "details": {
      "title": "Funiculi Funicula",
      "chapter": 1,
      "date": "23 Aug 2024",
      "rating": 4.5,
      "downloaded": false,
    },
  },
  {
    "id": 2,
    "details": {
      "title": "Funiculi Funicula 2",
      "chapter": 2,
      "date": "24 Aug 2024",
      "rating": 4.2,
      "downloaded": true,
    },
  },
  {
    "id": 3,
    "details": {
      "title": "Funiculi Funicula 3",
      "chapter": 3,
      "date": "25 Aug 2024",
      "rating": 4.6,
      "downloaded": false,
    },
  },
  {
    "id": 4,
    "details": {
      "title": "Funiculi Funicula 4",
      "chapter": 4,
      "date": "26 Aug 2024",
      "rating": 4.6,
      "downloaded": true,
    },
  },
  {
    "id": 5,
    "details": {
      "title": "Funiculi Funicula 5",
      "chapter": 5,
      "date": "28 Aug 2024",
      "rating": 4.9,
      "downloaded": false,
    },
  },
];

List<Map<String, dynamic>> users = [
  {
    "userId": 1,
    "imagePath": "assets/LibraryPage/image1.png",
    "profilePic": "assets/NovelPage/profilepic.png",
    "name": "Peterpad",
    "followerCount": 30,
    "followingCount": 10,
    "worksCount": 10,
    "collectionsCount": 5,
    "about":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
  },
  {
    "userId": 2,
    "imagePath": "assets/LibraryPage/image1.png",
    "profilePic": "assets/NovelPage/profilepic.png",
    "name": "Lofi Girl",
    "followerCount": 30,
    "followingCount": 10,
    "worksCount": 10,
    "collectionsCount": 5,
    "about":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
  },
  {
    "userId": 3,
    "imagePath": "assets/LibraryPage/image1.png",
    "profilePic": "assets/NovelPage/profilepic.png",
    "name": "Lofi Girl",
    "followerCount": 30,
    "followingCount": 10,
    "worksCount": 10,
    "collectionsCount": 5,
    "about":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Orci porta non pulvinar neque laoreet suspendisse interdum consectetur libero. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. In pellentesque massa placerat duis ultricies lacus sed turpis tincidunt. Lorem ipsum dolor sit amet consectetur adipiscing elit ut. Massa sapien faucibus et molestie ac feugiat. Orci porta non pulvinar neque laoreet suspendisse interdum. Massa tincidunt nunc pulvinar sapien et ligula ullamcorper. Sed adipiscing diam donec adipiscing tristique risus. Volutpat consequat mauris nunc congue nisi vitae suscipit tellus. Est velit egestas dui id ornare arcu.",
  },
];

List<Map<String, dynamic>> posts = [
  {
    "userId": 1,
    "posts": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
    ],
  },
  {
    "userId": 2,
    "posts": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
    ],
  },
  {
    "userId": 3,
    "posts": [
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 6,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
      {
        "profilePic": "assets/NovelPage/profilepic.png",
        "name": "Lofi Girl",
        "date": "3d ago",
        "comment":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Suscipit adipiscing bibendum est ultricies integer quis auctor. Magna ac placerat vestibulum lectus mauris ultrices eros in. Donec ultrices tincidunt arcu non sodales neque. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. ",
        "replyCount": 0,
      },
    ],
  },
];
