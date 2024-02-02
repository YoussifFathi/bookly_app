import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similiar_books_state.dart';

class SimiliarBooksCubit extends Cubit<SimiliarBooksState> {

  SimiliarBooksCubit(this._homeRepo) : super(SimiliarBooksInitialState());

  final HomeRepo _homeRepo ;

  Future<void> fetchSimiliarBooks(String cateogry) async {
    emit(SimiliarBooksLoadingState());
    var results = await _homeRepo.fetchSimiliarBook(cateogry);
    results.fold((failure) {
      emit(SimiliarBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(SimiliarBooksSucessfulState(books));
    });
  }


}
