import 'package:flutter/material.dart';
import 'package:quiz1/screen1/home_screen.dart';
import 'package:quiz1/screen1/mental_health_app.dart';
import 'package:quiz1/screen2/work_out_app.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        MentalHealthApp.routeName : (buildcontext) => MentalHealthApp(),
        WorkOutApp.routeName : (buildcontext) => WorkOutApp(),

      },
      initialRoute:WorkOutApp.routeName ,
    );
  }
}

