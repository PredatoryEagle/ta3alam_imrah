import 'package:flutter/material.dart';
import 'package:ta3alam_imrah/Screens/home_screen.dart';
import 'package:ta3alam_imrah/Screens/login_screen.dart';
import 'package:ta3alam_imrah/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpScreen.id,
      routes: {
        SignUpScreen.id: (context) => SignUpScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      theme: ThemeData(),
    );
  }
}
