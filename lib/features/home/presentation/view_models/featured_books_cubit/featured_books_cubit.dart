import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo.dart';
import 'package:bookly_app/features/home/model/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitialState());

  final HomeRepoImp homeRepoImp = HomeRepoImp();

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoadingState());
    var results = await homeRepoImp.fetchFeaturedBook();
    results.fold((failure) {
      emit(FeaturedBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSucessfulState(books));
    });
  }
}
