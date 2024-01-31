import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit() : super(NewestBookInitialState());

  final HomeRepoImp homeRepoImp = HomeRepoImp();

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoadingState());
    var results = await homeRepoImp.fetchNewestBooks();
    results.fold((failure) {
      emit(NewestBookFailureState(failure.errorMessage));
    }, (books) {
      emit(NewestBookSucessfulState(books));
    });
  }

}
