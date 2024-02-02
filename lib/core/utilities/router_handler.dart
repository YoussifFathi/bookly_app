import 'package:bookly_app/core/utilities/locator_service.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/model/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/view_models/similiar_books_cubit/similiar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class RouterHandler {
  static const String kHomeViewRoute = '/homeView';
  static const String kBookDetailsViewRoute = '/bookDetailsView';
  static const String kSearchViewRoute = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsViewRoute,
        builder: (context, state) => BlocProvider(
            create: (context) => SimiliarBooksCubit(getIt.get<HomeRepoImp>()),
            child: BookDetailsView(bookModel: state.extra as BookModel,)),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
