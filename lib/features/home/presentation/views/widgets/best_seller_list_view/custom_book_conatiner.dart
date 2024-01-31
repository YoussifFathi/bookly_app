import 'package:bookly_app/core/utilities/assets_handler.dart';
import 'package:bookly_app/core/utilities/router_handler.dart';
import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view/custom_rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).go(RouterHandler.kBookDetailsViewRoute);
      },
      child: Container(
        height: 125,
        margin: const EdgeInsets.only(left: 30,right: 30,bottom: 20),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        AssetsHandler.book1Image,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            const Expanded(
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SizedBox(
                    child:  Text(
                      'Harry Pott erand the Go blet of Fire Harry Pott erand the Go blet of Fire',
                      softWrap: true,
                      style: StylesHandler.textStyle20Sectra,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                   SizedBox(height: 3,),
                   Text(
                    'J.K. Rowling',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff707070),
                    ),
                  ),
                   SizedBox(height: 3,),
                  Row(
                    children: [
                       Text("19.99 \$",style: StylesHandler.textStyle20Bold,),
                      Spacer(),
                      CustomRatingRow(),
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

