import 'package:flutter/material.dart';
import './screens/loginscreen.dart';
import './screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login with flutter widget',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Loginscreen(),
      routes: {
          Signup.signuproute:(cvb)=>Signup(),
        },
      debugShowCheckedModeBanner: false,
    );
  }
}

