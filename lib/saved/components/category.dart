import 'package:app_mapping/components/menu/detail.dart';
import 'package:app_mapping/constants.dart';
import 'package:app_mapping/saved/card_list_destination.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
            title: 'Gedung Jangkung Ieu',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => DetailPage());
              Navigator.push(context, route);
            },
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
