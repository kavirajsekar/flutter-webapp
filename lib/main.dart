import 'package:flutter/material.dart';
import 'package:webapplication/customappbar.dart';
import 'package:webapplication/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        body: MyHomePage(),
      ),
    );
  }
}
