import 'package:flutter/material.dart';
import 'package:stoxdata/screens/welcome_screen.dart';
import 'package:stoxdata/screens/login_screen.dart';
import 'package:stoxdata/screens/register_screen.dart';
import 'package:stoxdata/screens/data_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: WelcomeScreen.id,
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) =>RegistrationScreen(),
          DataScreen.id:(context)=> DataScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          //'/second': (context) => const SecondScreen(),
        }
    );
  }
}

