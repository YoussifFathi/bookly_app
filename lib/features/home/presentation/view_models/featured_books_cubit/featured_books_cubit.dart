// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitialState());

  final HomeRepo _homeRepo ;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var results = await _homeRepo.fetchFeaturedBook();
    results.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSucessfulState(books));
    });
  }
}
