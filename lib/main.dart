import 'package:assignments/Login_and_register_screens/register_view.dart';
import 'package:assignments/coffee/home_view.dart';
import 'package:assignments/coffee/coffee_item_view.dart';
import 'package:assignments/coffee/onboarding_view.dart';
import 'package:flutter/material.dart';

import 'Medical app/navigation_view.dart';
import 'Medical app/login_view.dart';
import 'Medical app/onboard_view.dart';
import 'Medical app/register_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MedicalNavigationView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

