import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class RouterHandler{
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchViewRoute,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}