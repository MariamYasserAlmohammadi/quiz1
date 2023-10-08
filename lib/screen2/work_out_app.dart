import 'package:flutter/material.dart';
import 'package:quiz1/screen1/user_tab.dart';

import 'calender_tab.dart';
import 'chart_tab.dart';
import 'home_screen.dart';

class WorkOutApp extends StatefulWidget {
  static const String routeName = "workout";

  @override
  State<WorkOutApp> createState() => _MentalHealthAppState();
}

class _MentalHealthAppState extends State<WorkOutApp> {
  int currentTabIndex = 0;

  List<Widget> tabs = [
    HomeScreen2(),
    NavigationTab(),
    ChartTab(),
    UserTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() => Container(
        // margin: EdgeInsets.only(left: 16, right: 16),

        child: BottomNavigationBar(
            currentIndex: currentTabIndex,
            landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
            iconSize: 24,
            selectedFontSize: 24,
            // unselectedFontSize: 24,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff363F72),
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              currentTabIndex = index;
              setState(() {});
            },

            // selectedItemColor: AppColors.accent,
            //   iconSize: 32,
            // backgroundColor: AppColors.primary,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/screen2/navigation.png"),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/screen2/chart.png"),
                ),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon((Icons.person)), label: ""),
            ]),
      );
}
