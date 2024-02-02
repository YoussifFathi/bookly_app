import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view_models/similiar_books_cubit/similiar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilliarBooksListViewBuilder extends StatelessWidget {
  const SimilliarBooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimiliarBooksCubit, SimiliarBooksState>(
      builder: (context, state) {
        if (state is SimiliarBooksSucessfulState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: CustomBookImage(
                    imageUrl: state.bookModelList[index].imageUrl,
                  ),
                );
              },
              itemCount: state.bookModelList.length,
            ),
          );
        } else if (state is SimiliarBooksLoadingState) {
          return CustomLoadingWidget();
        } else {
          return CustomErrorWidget(
              errorMessage: state is SimiliarBooksFailureState
                  ? state.errorMessage
                  : 'error');
        }
      },
    );
  }
}
