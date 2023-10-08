import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/screen1/calender_tab.dart';
import 'package:quiz1/screen1/categories_tab.dart';
import 'package:quiz1/screen1/user_tab.dart';

class HomeScreen2 extends StatefulWidget {
  static const routeName = "homescreen2";

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
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
           TabBar(tabs: [

           ]),
           TabBarView(children: [

           ]),
           Expanded(
             child: ListView.builder(
                  itemCount: 3,
                 itemBuilder: (Buildcontext , int){
                   return grayContainerWidget("assets/images/screen2/y1.png","7 days","Morning Yogs","Improve Mental focus","10 mins");


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
  Widget grayContainerWidget(String imagePath, String t1, String t2, String t3,String t4){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24),
      padding: EdgeInsets.all(24),
      height: 174,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffEAECF5),
        borderRadius: BorderRadius.circular(8),
        //Color(0xffEAECF5),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),

                    color: Colors.white
                ),
                child: Text("$t1 days"),
              ),
              SizedBox(
                height: 12,
              ),
              Text(t2,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                t3,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                      "assets/images/screen2/clock.png"),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    t4,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
          Image.asset(
            imagePath ,),
        ],
      ),
    );
  }
}
