import 'package:bookly_app/features/home/presentation/views/widgets/hight_light_list_view/custom_book_image.dart';
import 'package:flutter/material.dart';

class CustomHightLightListViewBuilder extends StatelessWidget {
  const CustomHightLightListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            height: MediaQuery.of(context).size.height * 0.3,

            child: const CustomBookIamge(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
