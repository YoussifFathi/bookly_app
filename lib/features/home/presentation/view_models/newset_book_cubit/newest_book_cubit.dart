// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this._homeRepo) : super(NewestBookInitialState());

  final HomeRepo _homeRepo ;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoadingState());
    var results = await _homeRepo.fetchNewestBooks();
    results.fold((failure) {
      emit(NewestBookFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBookSucessfulState(books));
    });
  }

}
