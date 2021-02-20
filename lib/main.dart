import 'package:calculadora/Utilities/constants.dart';
import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: kAppbarColour,
        scaffoldBackgroundColor: kbackColour,
      ),
      home: HomeScreen(),
    ));
