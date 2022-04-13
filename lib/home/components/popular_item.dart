import 'package:app_mapping/constants.dart';
import 'package:app_mapping/home/components/popular_menu.dart';
import 'package:flutter/material.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopularMenu(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
          PopularMenu(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
          PopularMenu(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
          PopularMenu(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
        ],
      ),
    );
  }
}
