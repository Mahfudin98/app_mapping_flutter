import 'package:app_mapping/about/about.dart';
import 'package:app_mapping/home/home.dart';
import 'package:app_mapping/maping/mapping.dart';
import 'package:app_mapping/saved/saved.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mapping App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

// class MainPage extends StatefulWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectIndex = 0;
//   static List<Widget> _widgetOption = [
//     HomePage(),
//     MappingPage(),
//     SavedPage(),
//     AboutPage(),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: _widgetOption.elementAt(_selectIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 0,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.map),
//             label: 'Mapping',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.airplay),
//             label: 'List',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info_outline),
//             label: 'Info',
//           ),
//         ],
//         currentIndex: _selectIndex,
//         unselectedItemColor: kTextColor,
//         selectedItemColor: kPrimaryColor,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
