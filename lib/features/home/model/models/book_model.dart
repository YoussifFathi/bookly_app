class BookModel {
  String id;
  String title;
  String author;

  BookModel({required this.id, required this.title, required this.author});

  factory BookModel.fromJson(jsonData) {
    return BookModel(
      id: jsonData['id'],
      title: jsonData['volumeInfo']['title'],
      author: jsonData['volumeInfo']['authors'][0],
    );
  }
}
