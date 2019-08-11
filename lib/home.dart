import 'package:book_store/detail.dart';

import 'book.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {print("drawer menu homeScreen") ;},
      ),
      title: Text("Design Books"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {print("search in homeScreen") ;},
        ),
      ],
    );

    ///create book tile hero
    createTile(Book book) => Hero(
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.yellow.shade900,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/${book.title}');
                // Navigator.push(context, Detail(book));
              },
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          tag: book.title,
        );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: Theme.of(context).primaryColor,
      body: grid,
    );
  }

  
  }

