
class BookModel {
  String id;
  String title;
  String author;
  String? imageUrl;

  BookModel({required this.id, required this.title, required this.author,  this.imageUrl});

  factory BookModel.fromJson(jsonData) {
    return BookModel(
      id: jsonData['id'],
      title: jsonData['volumeInfo']['title'],
      author: jsonData['volumeInfo']['authors'][0],
      imageUrl: jsonData['volumeInfo']?['imageLinks']?['thumbnail'] ,

    );
  }
}
