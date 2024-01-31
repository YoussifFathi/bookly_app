import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_book_conatiner.dart';
import 'package:flutter/cupertino.dart';

class CustomBestSellerListViewBuilder extends StatelessWidget {
  const CustomBestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return  const CustomBookContainer();
        },
        childCount: 10,
      ),
    );
  }
}
