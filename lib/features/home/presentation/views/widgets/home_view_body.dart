import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_best_seller_list_view_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view/featured_book_list_view_builder.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeViewAppBar(),
              SizedBox(
                height: 20,
              ),
              FeaturedBooksListViewBuilder(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Best Seller",
                  style: StylesHandler.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        CustomBestSellerListViewBuilder(),
      ],
    );
  }
}
