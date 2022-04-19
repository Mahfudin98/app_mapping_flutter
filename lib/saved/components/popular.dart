import 'package:app_mapping/constants.dart';
import 'package:app_mapping/saved/card_list_destination.dart';
import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CardListDestination(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
          CardListDestination(
            icon: Icon(
              Icons.bookmark_add_sharp,
              color: kPrimaryColor.withOpacity(0.8),
              size: 35,
            ),
            image: 'assets/images/gedung-jangkung.jpg',
            title: 'Gedung Jangkung',
            press: () {},
          ),
          CardListDestination(
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
