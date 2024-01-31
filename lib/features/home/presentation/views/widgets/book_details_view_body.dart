import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_rating_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_but_and_preview_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/hight_light_list_view/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/smilliar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BookDetailsAppBar(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(
                  right: size.width * 0.20,
                  left: size.width * 0.20,
                ),
                child: const CustomBookIamge(),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "The Jungle Book",
                style: StylesHandler.textStyle30Sectra,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Rudyard Kipling",
                style: StylesHandler.textStyle18Sectra,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomRatingRow(),
              const SizedBox(
                height: 30,
              ),
              const CustomBuyAndPreviewRow(),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:   Text(
                  "You can also like",
                  style: StylesHandler.textStyle16Bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SimilliarBooksListViewBuilder(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
