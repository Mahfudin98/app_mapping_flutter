import 'package:app_mapping/constants.dart';
import 'package:app_mapping/home/components/category_item.dart';
import 'package:app_mapping/home/components/header.dart';
import 'package:app_mapping/home/components/popular_item.dart';
import 'package:app_mapping/home/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithScreenBox(size: size),
          TititleWithMoreButton(
            title: "Category",
            press: () {},
          ),
          const SizedBox(height: kDefaultPadding),
          const CategoryItem(),
          const SizedBox(height: kDefaultPadding),
          TititleWithMoreButton(
            title: "Popular",
            press: () {},
          ),
          const SizedBox(height: kDefaultPadding),
          const PopularItem(),
        ],
      ),
    );
  }
}
