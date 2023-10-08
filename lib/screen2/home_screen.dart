import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/screen1/calender_tab.dart';
import 'package:quiz1/screen1/categories_tab.dart';
import 'package:quiz1/screen1/user_tab.dart';

class HomeScreen2 extends StatelessWidget {
  static const routeName = "homescreen2";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/screen1/logo.png"),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Moody",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
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

            ],
          ),
        ),
      ),
    );
  }

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






}
