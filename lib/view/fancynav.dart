 import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FancyNavView extends StatefulWidget {
   const FancyNavView({Key? key}) : super(key: key);

   @override
   _FancyNavViewState createState() => _FancyNavViewState();
 }

 class _FancyNavViewState extends State<FancyNavView> {

   var currentIndex = 0;

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
           backgroundColor: Colors.white,
           bottomNavigationBar:Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(25),
                   topRight: Radius.circular(25),
                   bottomLeft: Radius.circular(25),
                   bottomRight: Radius.circular(25)
               ),
             ),
             child: CurvedNavigationBar(
               items: [
                 Icon(
                   Icons.home,
                   size: 25,
                   color: Colors.white,
                 ),
                 Icon(
                   Icons.menu,
                   size: 25,
                   color: Colors.white,
                 ),
                 Icon(
                   Icons.radio,
                   size: 25,
                   color: Colors.white,
                 ),
                 Icon(
                   Icons.tv,
                   size: 25,
                   color: Colors.white,
                 ),
                 Icon(
                   Icons.mail,
                   size: 25,
                   color: Colors.white,
                 ),
               ],
               animationCurve: Curves.easeInOut,
               color: Colors.brown,
               //animationDuration: Duration(microseconds: 200),
               index: currentIndex,
               backgroundColor: Colors.transparent,
               buttonBackgroundColor: Colors.brown,
               height: 65.0,
               // buttonBackgroundColor: Colors.black12,
               //height: 85,
               onTap: (index) {
                 setState(() {
                   currentIndex = index;
                 });
               },
             ),
           )
       ),
     );
   }
 }
