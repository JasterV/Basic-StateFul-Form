import 'package:flutter/material.dart';
import 'Widgets/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xFF91ffae),
        accentColor: Colors.lightBlueAccent,
        primaryColor: Color(0xFF91fcff),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Login page',
      home: LoginScreen(),
    );
  }
}
