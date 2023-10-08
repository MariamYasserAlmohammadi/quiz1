import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/screen1/calender_tab.dart';
import 'package:quiz1/screen1/categories_tab.dart';
import 'package:quiz1/screen1/user_tab.dart';
import 'package:quiz1/screen2/Ilist_item_data.dart';
import 'package:quiz1/screen2/list_item_widget.dart';

class HomeScreen2 extends StatefulWidget {
  static const routeName = "homescreen2";

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List<ListItemData> listItemsData = [
  ListItemData("assets/images/screen2/y1.png","7 days","Morning Yoga","Improve Mental focus","30 mins"),
  ListItemData("assets/images/screen2/y2.png","3 days","Plank Exercise","Improve posture and stability","30 mins"),
  ListItemData("assets/images/screen2/y1.png","7 days","Morning Yoga","Improve Mental focus","30 mins"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 28,
                  backgroundImage:
                  AssetImage("assets/images/screen2/userPhoto.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello , Jade",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Ready to Workout?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                badges.Badge(
                  badgeContent: Text('1'),
                  child: Stack(
                    children: [
                      buildIconWithBorder(24, Colors.black),
                      buildIconWithBorder(20, Colors.white),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xffF8F9FC)
                // Color(0xffF8F9FC),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  grayContainerItemWidget("assets/images/screen2/heart.png",
                      "Heart Rate", "81", "BPM"),
                  VerticalDivider(
                    thickness: 2,
                    width: 10,
                    color: Color(0xffD9D9D9),
                  ),
                  grayContainerItemWidget(
                      "assets/images/screen2/list.png", "To-do", "32.5", "%"),
                  VerticalDivider(
                    thickness: 2,
                    width: 10,
                    color: Color(0xffD9D9D9),
                  ),
                  grayContainerItemWidget("assets/images/screen2/fire.png",
                      "Calo", "1000", "Cal"),
                ],
              ),
              width: double.infinity,
              height: 82,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "Workout Program",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16,),
            // TabBar(tabs: [
            // ]),
            // TabBarView(children: [
            // ]),
            Expanded(
              child: ListView.builder(
                  itemCount: listItemsData.length,
                  itemBuilder: (Buildcontext, index) {
                    return ListItemWidget(listItemsData[index]);
                  }),
            )


          ],
        ),
      ),
    );
  }

// List<Widget> t33=[
//   grayContainerWidget("assets/images/screen2/y1.png","7 days","Morning Yogs","Improve Mental focus","10 mins");
// ];
  Widget buildIconWithBorder(double size, Color color) {
    return Container(
      height: 24,
      width: 24,
      alignment: Alignment.center,
      child: Icon(
        Icons.notifications,
        color: color,
        size: size,
      ),
    );
  }

  Widget grayContainerItemWidget(String imagePath, String t1, String t2, String t3) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(imagePath),
            SizedBox(
              width: 2,
            ),
            Text(
              t1,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            )
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text.rich(
          TextSpan(
            text: t2,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            children: <TextSpan>[
              TextSpan(
                text: t3,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildListItem(BuildContext context ,int index) {
    return ListItemWidget(listItemsData[index]);
  }

}
