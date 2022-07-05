import 'package:flutter/material.dart';
import 'package:learners_point/Pages/free_course_page.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'Pages/homepage.dart';
import 'package:flutter/services.dart';

void main() {
// SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blueGrey,
      // ),
      home: const MyHomePage(),
    );
  }
}