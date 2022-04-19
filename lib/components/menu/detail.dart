import 'package:app_mapping/components/sidebar/sidebar.dart';
import 'package:app_mapping/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Sidebar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: Image.asset("assets/images/gedung-jangkung.jpg"),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black.withOpacity(0.5)),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                "Bangunan Gedung Jangkung berada di sudut persimpangan jalan, sehingga bangunan ini merupakan bangunan sudut. Seperti lazimnya bangunan sudut, lahan tanah Gedung Jangkung berdiri cukuplah luas (42 x 28 m), sehingga masih terdapat lahan yang lapang untuk digunakan sebagai taman di bagian depan dan samping yang berbatasan dengan jalan. Luas bangunannya saja ± 28 x 19 m.",
                style: TextStyle(),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {},
              child: Text(
                "View Maps",
                style: TextStyle(color: kBackgroundColor),
              ),
            ),
          ),
        ],
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
      title: Text("Gedung Jangkung"),
      elevation: 0,
      backgroundColor: kPrimaryColor,
    );
  }
}
