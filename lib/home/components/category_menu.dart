import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';

class CategoryMenu extends StatelessWidget {
  const CategoryMenu({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding / 6,
      ),
      height: 110,
      width: size.width * 0.2,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: kPrimaryColor.withOpacity(0.5)),
      ),
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: kDefaultPadding / 2,
              ),
              child: Image.asset(image),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
