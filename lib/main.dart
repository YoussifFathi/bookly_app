import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/locator_service.dart';
import 'package:bookly_app/core/utilities/router_handler.dart';
import 'package:bookly_app/features/home/model/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newset_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestBookCubit(getIt.get<HomeRepoImp>())..fetchNewestBooks()),

      ],
      child: MaterialApp.router(
        routerConfig: RouterHandler.router,
        theme: ThemeData(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          brightness: Brightness.dark,
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
