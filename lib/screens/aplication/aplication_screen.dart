import 'package:flutter/material.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/screens/aplication/components/AppBar.dart';
import 'package:rive_animation/screens/debtsList/debtsList_screen.dart';
import 'package:rive_animation/screens/home/Home_screen.dart';

int _ActiveScreen = 0;

class AplicationPage extends StatefulWidget {
  const AplicationPage({super.key});

  @override
  State<AplicationPage> createState() => _AplicationPageState();
  
}

class _AplicationPageState extends State<AplicationPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundApp,
        primarySwatch: Colors.blue, 
        fontFamily: "Intel",  
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
        ),
      ),
      home: Stack(
        alignment: Alignment.center,
        children: [
          // HomeScreen(),
          DebtsListScreen(),
          AppBarComponent(),
        ],
      ),
    );
  }
}

