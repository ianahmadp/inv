import 'package:flutter/material.dart';
import 'package:undangan/first_screen.dart';
import 'package:undangan/main_screen.dart';

import 'configs/themes/app_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primaryDark2Color
      ),
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
    );
  }
}