import 'package:flutter/material.dart';
import 'package:login_ui/screens/homePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myApp(),
  ));
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return homePage();
  }
}



