part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitialState extends FeaturedBooksState {}
class FeaturedBooksLoadingState extends FeaturedBooksState {}
class FeaturedBooksSucessfulState extends FeaturedBooksState {
  final List<BookModel> bookModelList;
  FeaturedBooksSucessfulState(this.bookModelList);
}
class FeaturedBooksFailureState extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailureState(this.errorMessage);

}
