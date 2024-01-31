import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_books_list_view/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListViewBuilder extends StatelessWidget {
  const FeaturedBooksListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {

    if(state is FeaturedBooksSucessfulState){
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 16),
              height: MediaQuery.of(context).size.height * 0.3,

              child:  CustomBookIamge(imageUrl: state.bookModelList[index].imageUrl),
            );
          },
          itemCount: state.bookModelList.length,
        ),
      );
    }else if(state is FeaturedBooksLoadingState){
      return const CustomLoadingWidget();
    }else{
      return CustomErrorWidget(errorMessage: state is FeaturedBooksFailureState ? state.errorMessage : "error");
    }
  },
);
  }
}
