import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Card(
        color: kBackgroundColor,
        elevation: 0,
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: kTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
