part of 'newest_book_cubit.dart';

@immutable
abstract class NewestBookState {}

class NewestBookInitialState extends NewestBookState {}

class NewestBookLoadingState extends NewestBookState {}
class NewestBookSucessfulState extends NewestBookState {
  final List<BookModel> bookModelList;
  NewestBookSucessfulState(this.bookModelList);
}
class NewestBookFailureState extends NewestBookState {
  final String errorMessage;

  NewestBookFailureState(this.errorMessage);

}

