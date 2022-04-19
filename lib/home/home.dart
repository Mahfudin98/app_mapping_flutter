import 'package:app_mapping/components/sidebar/sidebar.dart';
import 'package:app_mapping/constants.dart';
import 'package:app_mapping/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Sidebar(),
      body: const HomeBody(),
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
