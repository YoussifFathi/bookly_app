import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_book_conatiner.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index == 0) {
          return const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Search Results",
                  style: StylesHandler.textStyle16Bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomBookContainer()
            ],
          );
        } else {
          return const CustomBookContainer();
        }
      },
      itemCount: 10,
    );
  }
}
