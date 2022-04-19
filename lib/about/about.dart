import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/sidebar/sidebar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Sidebar(),
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

  AppBar buildAppBar() {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: SvgPicture.asset("assets/icons/menu.svg"),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
