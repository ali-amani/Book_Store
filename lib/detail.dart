import 'book.dart';
import 'package:flutter/material.dart';
import 'rating_bar.dart';

class Detail extends StatelessWidget {
  final Book book;
  Detail(this.book);
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 5,
      title: Text("Design Books"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print("search in DetailScreen");
          },
        ),
      ],
    );

    //detail of book image and it's pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', color: Colors.black38, size: 15),
      ],
    );

    //detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title,
            size: 22, isBold: true, padding: EdgeInsets.only(top: 16.0)),
        text('by ${book.writer}',
            size: 16,
            color: Colors.black54,
            padding: EdgeInsets.only(top: 8.0, bottom: 16.0)),
        Row(children: <Widget>[
          text(book.price,
              isBold: true, padding: EdgeInsets.only(right: 8.0), size: 18),
          RatingBar(
            rating: book.rating,
            size: 22.0,
          )
        ]),
        SizedBox(
          height: 32.0,
        ),
        Padding(
          padding: const EdgeInsets.only(top :20.0 , left: 20.0),
          child: Row(
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.circular(20.0),
                shadowColor: Colors.blue.shade200,
                color: Colors.blue,
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    print("Buy it now in :  ${book.title}");
                  },
                  minWidth: 130.0,
                  // color: Colors.blue,
                  child: text("Buy IT Now", color: Colors.white, size: 13),
                ),
              ),
              SizedBox(
                width: 3.0,
              ),
              Material(
                // borderRadius: BorderRadius.circular(5.0),
                shadowColor: Colors.blue.shade200,
                color: Colors.red,
                elevation: 2.0,
                shape: CircleBorder(),
                child: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  shape: CircleBorder(),
                  onPressed: () {
                    print("Favorit selected");
                  },
                  // minWidth: 160.0,
                  // color: Colors.blue,
                  child: Icon(Icons.favorite_border , color: Colors.white,),
                ),
              ),
            ],
          ),
        )
      ],
    );

    //mergtop Content with a Row
    final topContent = Container(
        color: Theme.of(context).primaryColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 2,
              child: topLeft,
            ),
            Flexible(
              flex: 3,
              child: topRight,
            )
          ],
        ),
        padding: EdgeInsets.only(
          bottom: 16.0,
        ));

    //Scrolling text Description
    final bottomContent = Container(
      height: 300.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 15.0, height: 1.5),
        ),
      ),
    );

    //merge all content in a scaffold
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  Widget text(String data,
          {Color color = Colors.black87,
          num size = 14.0,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
