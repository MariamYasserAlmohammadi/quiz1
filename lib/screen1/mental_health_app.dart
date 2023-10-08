import 'package:flutter/material.dart';
import 'package:quiz1/screen1/user_tab.dart';

import 'calender_tab.dart';
import 'categories_tab.dart';
import 'home_screen.dart';

class MentalHealthApp extends StatefulWidget {
  static const String routeName ="mentalhealth";

  @override
  State<MentalHealthApp> createState() => _MentalHealthAppState();
}

class _MentalHealthAppState extends State<MentalHealthApp> {
  int currentTabIndex=0;

  List<Widget> tabs=[
    HomeScreen(),
    CategoriesTab(),
    CalenderTab(),
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
        currentIndex:currentTabIndex ,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,

        iconSize: 24,
        selectedFontSize: 24,
        // unselectedFontSize: 24,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          currentTabIndex =index;
          setState(() {

          });
        },

        // selectedItemColor: AppColors.accent,
        //   iconSize: 32,
        // backgroundColor: AppColors.primary,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: ""),
          BottomNavigationBarItem(icon: Icon((Icons.person)),label: ""),

        ]),
  );
}
