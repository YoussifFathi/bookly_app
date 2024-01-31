import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilliarBooksListViewBuilder extends StatelessWidget {
  const SimilliarBooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            height: MediaQuery.of(context).size.height * 0.18,

            child: const CustomBookIamge(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
