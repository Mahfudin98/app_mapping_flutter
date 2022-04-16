import 'package:app_mapping/home/components/category_menu.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryMenu(
            image: 'assets/images/all.png',
            press: () {},
            title: 'All',
          ),
          CategoryMenu(
            image: 'assets/images/museum.png',
            press: () {},
            title: 'Museum',
          ),
          CategoryMenu(
            image: 'assets/images/goa.png',
            press: () {},
            title: 'Patilasan',
          ),
          CategoryMenu(
            image: 'assets/images/bangunan.png',
            press: () {},
            title: 'Gedung',
          ),
        ],
      ),
    );
  }
}
