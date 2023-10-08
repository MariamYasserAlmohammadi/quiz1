import 'package:flutter/material.dart';
import 'package:quiz1/screen1/mental_health_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        MentalHealthApp.routeName : (BuildCcontext) => MentalHealthApp(),
      },
      initialRoute:MentalHealthApp.routeName ,
    );
  }
}

