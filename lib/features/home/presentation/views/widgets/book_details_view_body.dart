import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/similiar_books_cubit/similiar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_rating_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_buy_and_preview_row.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/smilliar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key,required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {

  @override
  void initState() {
    BlocProvider.of<SimiliarBooksCubit>(context).fetchSimiliarBooks(widget.bookModel.category);
    super.initState();
  }

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
                child:  CustomBookImage(imageUrl: widget.bookModel.imageUrl),
              ),
              const SizedBox(
                height: 30,
              ),
               Text(
                widget.bookModel.title,
                style: StylesHandler.textStyle30Sectra,
              ),
              const SizedBox(
                height: 5,
              ),
               Text(
                widget.bookModel.author,
                style: StylesHandler.textStyle18Sectra,
              ),
              const SizedBox(
                height: 15,
              ),
               CustomRatingRow(averageRating:  widget.bookModel.averageRating,ratingsCount:  widget.bookModel.ratingsCount),
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
