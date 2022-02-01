import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getx_project/carousel_slider/carousel_slider.dart';
import 'package:getx_project/hrm_practice/hr.dart';
import 'package:getx_project/view/staggredview.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(ProviderScope(
     child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
         // body: Profile()
          body: CarouselView(),
          ),
    );
   // );
  }
}


