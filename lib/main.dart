import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/screen_home.dart';
import 'screens/screen_lost.dart';
import 'screens/screen_community.dart';
import 'screens/screen_bus.dart';
import 'screens/screen_notice.dart';


// void main() => runApp(MaterialApp(
//   debugShowCheckedModeBanner: false,
//   theme: ThemeData(fontFamily: 'Roboto'),
//   home: MyApp(),
// ));
//
// class MyApp extends StatefulWidget {
//   @override
//   Widget build(BuildContext context){
//     return
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: HomePage(),
      );

  }
}