import 'package:flutter/material.dart';
import 'package:book_store/home.dart';

import 'book.dart';
import 'detail.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) =>generateRoute(settings),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        platform: TargetPlatform.iOS
      ),
      home: Home(),
    );
    
  }
  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
}
}

