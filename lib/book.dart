import 'package:faker/faker.dart';

class Book {
  static var faker = Faker();
  String title, writer, price, image, description = getDescription(faker.lorem.sentences(100));
  int pages;
  double rating;
  Book(
      this.title, this.writer, this.price, this.image, this.rating, this.pages);
}

String getTilte(var title){
  var res = "";
  for(var word in title)
    res += word + " " ;
  return res ;
}

String getDescription(var sentences){
  var res = "";
  for(var sentence in sentences){
      res += sentence + " " ;
  }
  return res ;
}
final List<Book> books = [
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_.jpg',
      4.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (1).jpg',
      3.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (2).jpg',
      3.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + ' t',
      'res/_ (3).jpg',
      3.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (4).jpg',
      3.8,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (5).jpg',
      5.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (6).jpg',
      4.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (7).jpg',
      3.5,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (8).jpg',
      4.0,
      faker.randomGenerator.integer(500, min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (9).jpg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (10).jpg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
  Book(
      getTilte(faker.lorem.words(5) ),
      faker.person.name(),
      random.integer(9999 , min :1000).toString() + " Rial",
      'res/_ (1).jpg',
      4.0,
      faker.randomGenerator.integer(500 , min: 150)),
];
