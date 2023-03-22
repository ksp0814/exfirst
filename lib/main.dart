import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/screen_home.dart';
import 'screens/screen_lost.dart';
import 'screens/screen_community.dart';
import 'screens/screen_bus.dart';
import 'screens/notice_board/screen_notice.dart';
import 'screens/screen_login.dart';
import 'screens/screen_splash.dart';
import 'screens/screen_register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:exfirst/firebase_options.dart';
import 'package:exfirst/models/model_auth.dart';
import 'package:provider/provider.dart';

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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => FirebaseAuthProvider()),
    ],
    child: MaterialApp(
      title: 'HYUPSUNG',
      theme: ThemeData(fontFamily: 'Roboto'),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
        '/register': (context) => RegisterScreen(),
      },
      initialRoute: '/splash',
    ),
      );

  }
}