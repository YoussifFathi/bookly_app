import 'package:bookly_app/core/utilities/assets_handler.dart';
import 'package:bookly_app/core/utilities/router_handler.dart';
import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/model/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_rating_row.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key,required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterHandler.kBookDetailsViewRoute,extra: bookModel);
      },
      child: Container(
        height: 125,
        margin: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 0.7,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookModel.imageUrl ?? AssetsHandler.backgroundBookCoverPlaceholder,
                  placeholder: (context, url) {
                    return const Center(child: CircularProgressIndicator(),);
                  },
                  fadeInDuration: const Duration(seconds: 2),
                  errorWidget: (context, url, error) {
                    return const Center(child: Icon(Icons.error),);
                  },
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
             Expanded(
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    child:  Text(
                      bookModel.title,
                      softWrap: true,
                      style: StylesHandler.textStyle20Sectra,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                   SizedBox(height: 3,),
                   Text(
                    bookModel.author,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff707070),
                    ),
                  ),
                   SizedBox(height: 3,),
                  Row(
                    children: [
                       Text("${bookModel.price} \$",style: StylesHandler.textStyle20Bold,),
                      Spacer(),
                      CustomRatingRow(averageRating: bookModel.averageRating,ratingsCount: bookModel.ratingsCount),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

