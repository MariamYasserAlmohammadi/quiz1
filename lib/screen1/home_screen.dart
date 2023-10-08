import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz1/screen1/calender_tab.dart';
import 'package:quiz1/screen1/categories_tab.dart';
import 'package:quiz1/screen1/user_tab.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "homescreen";
  String imagePath = "";
  String emotionText = "";
  CarouselController buttonCarouselController = CarouselController();

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
              Row(
                children: [
                  Text.rich(TextSpan(
                      text: 'Hello, ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 22),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sara Rose',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        )
                      ])),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "How are you feeling today ?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  emotionWidget("Love", "assets/images/screen1/love.png"),
                  emotionWidget("Cool", "assets/images/screen1/cool.png"),
                  emotionWidget("Happy", "assets/images/screen1/happy.png"),
                  emotionWidget("Sad", "assets/images/screen1/sad.png"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              seeMoreWidgetWithTitle("Feature", "SeeMore"),
              SizedBox(
                height: 16,
              ),
              CarouselSlider(

                items: [
                  Container(
                    padding: EdgeInsets.all(24),
                    width: 326,
                    height: 168,
                    decoration: BoxDecoration(
                      color: Color(0xffECFDF3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Positive vibes",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff344054)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Boost your mood \n with positive vibes",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/screen1/playButton.png"),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "10 mins",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                            "assets/images/screen1/Walking_the_Dog.png"),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(24),
                    width: 326,
                    height: 168,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Positive vibes",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff344054)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Boost your mood \n with positive vibes",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                    "assets/images/screen1/playButton.png"),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "10 mins",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                            "assets/images/screen1/Walking_the_Dog.png"),
                      ],
                    ),
                  ),
                ],
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),

              ),


              SizedBox(
                height: 40,
              ),
              seeMoreWidgetWithTitle("Exercise", "SeeMore"),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  exerciseWidget("assets/images/screen1/relaxation.png",
                      "Relaxation", Color(0xffF9F5FF)),
                  exerciseWidget("assets/images/screen1/meditation.png",
                      "Meditation", Color(0xffFDF2FA)),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  exerciseWidget("assets/images/screen1/breathing.png",
                      "Breathing", Color(0xffFFFAF5)),
                  exerciseWidget("assets/images/screen1/yoga.png", "Yoga",
                      Color(0xffF0F9FF)),
                ],
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

  Widget emotionWidget(String emotionText, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(
          height: 8,
        ),
        Text(
          emotionText,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget seeMoreWidgetWithTitle(String t1, String t2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          t1,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        InkWell(
          onTap: () {},
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: t2,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    )),
                WidgetSpan(
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    size: 16,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget exerciseWidget(String imagePath, String text, Color color) {
    return Container(
      width: 150,
      height: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(imagePath),
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
