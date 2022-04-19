import 'package:app_mapping/saved/components/category.dart';
import 'package:app_mapping/saved/components/popular.dart';
import 'package:flutter/material.dart';

class TabControllerWidget extends StatefulWidget {
  TabControllerWidget({Key? key}) : super(key: key);

  @override
  State<TabControllerWidget> createState() => _TabControllerWidgetState();
}

class _TabControllerWidgetState extends State<TabControllerWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: SizedBox(
            height: 50.0,
            child: TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  text: "Category",
                ),
                Tab(
                  text: "Popular",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            CategoryPage(),
            PopularPage(),
          ],
        ),
      ),
    );
  }
}
