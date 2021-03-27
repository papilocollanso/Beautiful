import 'package:flutter/material.dart';
import 'package:beautiful/drawer_screen.dart';
import 'package:beautiful/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home:Scaffold(
       body: Stack(
         children: <Widget>[
           DrawerScreen(),
           HomeScreen(),

         ],
       ),
     ),
    );
  }

}

