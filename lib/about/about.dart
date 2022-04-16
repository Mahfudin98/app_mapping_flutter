import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(
            top: kDefaultPadding * 3,
            left: kDefaultPadding,
            right: kDefaultPadding,
          ),
          height: size.height,
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(height: 20),
              Text(
                "Aplikasi ini dibuat untuk memenuhi syarat kelulusan S1 Informatika",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
