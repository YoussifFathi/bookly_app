import 'package:bookly_app/core/utilities/assets_handler.dart';
import 'package:flutter/material.dart';

class CustomBookIamge extends StatelessWidget {
  const CustomBookIamge({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6696,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsHandler.book1Image,
            ),
          ),
        ),
      ),
    );
  }
}
