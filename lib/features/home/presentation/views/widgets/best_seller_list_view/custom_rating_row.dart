import 'package:bookly_app/core/utilities/stylies_handler.dart';
import 'package:flutter/material.dart';

class CustomRatingRow extends StatelessWidget {
  const CustomRatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        SizedBox(width: 5,),
        Text("4.8",style: StylesHandler.textStyle16Bold,),
        SizedBox(width: 5,),
        Text("(2390)",style: StylesHandler.textStyle14,)
      ],
    );
  }
}
