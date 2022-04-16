import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';

import 'card_list_destination.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List All Destination",
          style: TextStyle(color: kTextColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: kTextColor,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: kBackgroundColor,
      ),
      body: SingleChildScrollView(
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
      ),
    );
  }
}
