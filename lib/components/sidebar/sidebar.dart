import 'package:app_mapping/about/about.dart';
import 'package:app_mapping/constants.dart';
import 'package:app_mapping/home/home.dart';
import 'package:app_mapping/maping/mapping.dart';
import 'package:app_mapping/saved/saved.dart';
import 'package:flutter/material.dart';

import 'drawer_menu.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    kTextColor.withOpacity(0.8), BlendMode.dstATop),
                image: AssetImage('assets/images/gedung-jangkung.jpg'),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
            ),
            child: Container(),
          ),
          DrawerMenu(
            icon: const Icon(Icons.home, color: kTextColor),
            title: 'Home',
            press: () {
              Route route = MaterialPageRoute(builder: (context) => HomePage());
              Navigator.push(context, route);
            },
          ),
          DrawerMenu(
            icon: const Icon(Icons.map, color: kTextColor),
            title: 'Map',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => MappingPage());
              Navigator.push(context, route);
            },
          ),
          DrawerMenu(
            icon: const Icon(Icons.airplay, color: kTextColor),
            title: 'List',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => SavedPage());
              Navigator.push(context, route);
            },
          ),
          DrawerMenu(
            icon: const Icon(Icons.info_outline, color: kTextColor),
            title: 'Info',
            press: () {
              Route route =
                  MaterialPageRoute(builder: (context) => AboutPage());
              Navigator.push(context, route);
            },
          )
        ],
      ),
    );
  }
}
