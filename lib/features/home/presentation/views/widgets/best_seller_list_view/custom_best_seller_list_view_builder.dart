import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/view_models/newset_book_cubit/newest_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_book_conatiner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBestSellerListViewBuilder extends StatelessWidget {
  const CustomBestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if(state is NewestBookSucessfulState){
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return CustomBookContainer(bookModel: state.bookModelList[index],);
              },
              childCount: state.bookModelList.length,
            ),
          );

        }else if (state is NewestBookLoadingState){
          return const SliverToBoxAdapter(child: CustomLoadingWidget(),);
        }else {
          return  SliverToBoxAdapter(child: CustomErrorWidget(errorMessage: state is NewestBookFailureState ? state.errorMessage : 'error'));
        }
      },
    );
  }
}
