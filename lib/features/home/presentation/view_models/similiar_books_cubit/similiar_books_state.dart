part of 'similiar_books_cubit.dart';

@immutable
abstract class SimiliarBooksState {}

class SimiliarBooksInitialState extends SimiliarBooksState {}
class SimiliarBooksLoadingState extends SimiliarBooksState {}
class SimiliarBooksSucessfulState extends SimiliarBooksState {
  final List<BookModel> bookModelList;
  SimiliarBooksSucessfulState(this.bookModelList);
}

class SimiliarBooksFailureState extends SimiliarBooksState {
  final String errorMessage;
  SimiliarBooksFailureState(this.errorMessage);
}
