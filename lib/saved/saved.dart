import 'package:app_mapping/components/sidebar/sidebar.dart';
import 'package:app_mapping/constants.dart';
import 'package:app_mapping/saved/components/category.dart';
import 'package:app_mapping/saved/tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'card_list_destination.dart';

class SavedPage extends StatefulWidget {
  SavedPage({Key? key}) : super(key: key);

  @override
  State<SavedPage> createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Sidebar(),
      body: TabControllerWidget(),
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
      title: Text(
        "List All Destination",
        style: TextStyle(color: kBackgroundColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: kBackgroundColor,
          ),
        ),
      ],
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
