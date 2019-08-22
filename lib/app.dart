import 'package:flutter/material.dart';
import 'screens/home.dart';

class EMAClassCounts extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'EMA Class Counts',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.black
    ),
    home: Home(),
  );
}