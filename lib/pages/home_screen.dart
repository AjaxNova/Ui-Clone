import 'package:flutter/material.dart';
import 'package:ui_clone/pages/training_tab/training_tab_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFabdbe3),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.menu),
            ),
          ),
          bottom: const TabBar(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              labelStyle: TextStyle(color: Colors.black, fontSize: 18),
              unselectedLabelStyle:
                  TextStyle(color: Colors.black, fontSize: 18),
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.amber,
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.man_2,
                    size: 27,
                  ),
                  text: "Training",
                ),
                Tab(
                    icon: Icon(
                      Icons.search,
                      size: 27,
                    ),
                    text: "Inspection"),
                Tab(
                    icon: Icon(
                      Icons.settings,
                      size: 27,
                    ),
                    text: "Calibration"),
              ]),
        ),
        body: const TabBarView(children: [TrainingTab(), Column(), Column()]),
      ),
    );
  }
}
