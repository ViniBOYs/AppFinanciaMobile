import 'package:flutter/material.dart';
import 'package:rive_animation/constants.dart';
import 'package:rive_animation/screens/aplication/components/AppBar.dart';
import 'package:rive_animation/screens/debtsList/DebtsList_screen.dart';
import 'package:rive_animation/screens/home/Home_screen.dart';



class AplicationPage extends StatefulWidget {
  const AplicationPage({super.key});

  @override
  State<AplicationPage> createState() => _AplicationPageState();
}

class _AplicationPageState extends State<AplicationPage> {
  @override
  Widget build(BuildContext context) {

    int _ActiveScreen = 0;

SwitchScreen(int newScreen) {
  if (newScreen == 0) {
    print("|SwitchScreen| => Tela Home");
    return _ActiveScreen = 0;
  } if (newScreen == 1) {
    _ActiveScreen = 1;
    print("|SwitchScreen| => Tela DebtsList");
    return _ActiveScreen = 1;
  }
}

Teste() {
  if (_ActiveScreen == 0) {
    print("Part2");
    return HomeScreen();
  } if (_ActiveScreen == 1) {
    _ActiveScreen = 1;
    print("Part2");
    return DebtsListScreen();
  }
}

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
          HomeScreen(),
          // DebtsListScreen(),
          // SwitchScreen(_ActiveScreen),
          Teste(),
          Container(width: 100,height: 100,color: Colors.amber,child: Text("$_ActiveScreen"),),
          AppBarComponent(),
        ],
      ),
    );
  }
}

