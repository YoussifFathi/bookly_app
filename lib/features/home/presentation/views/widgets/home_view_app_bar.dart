import 'package:bookly_app/core/utilities/assets_handler.dart';
import 'package:bookly_app/core/utilities/router_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            AssetsHandler.logoImage,
            height: 18,
          ),
          IconButton(
            onPressed: () {
              GoRouter.of(context).go(RouterHandler.kSearchViewRoute);
            },
            icon: const Icon(
              Icons.search,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
