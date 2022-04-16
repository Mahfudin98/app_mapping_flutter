import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';

class CardListDestination extends StatelessWidget {
  const CardListDestination({
    Key? key,
    required this.title,
    required this.image,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String title, image;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        top: kDefaultPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      height: size.height * 0.29,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:
              ColorFilter.mode(kTextColor.withOpacity(0.8), BlendMode.dstATop),
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: kPrimaryColor.withOpacity(0.2)),
      ),
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                      right: kDefaultPadding / 4,
                      top: kDefaultPadding / 4,
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: icon),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              margin: const EdgeInsets.only(
                left: kDefaultPadding / 4,
                bottom: kDefaultPadding,
              ),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
