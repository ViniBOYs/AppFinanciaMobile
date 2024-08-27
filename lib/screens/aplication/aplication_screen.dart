import 'package:flutter/material.dart';
import 'package:rive_animation/screens/home/Home_screen.dart';

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
        scaffoldBackgroundColor: Color.fromARGB(255, 44, 61, 99)
      ),
      home: HomeScreen(),
    );
  }
}


// @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'App Financias',
//       debugShowCheckedModeBanner: true,
//       theme: ThemeData(
//         scaffoldBackgroundColor: Color(0xFFEEF1F8), //Background Geral (Aplica na tela onbonding_screen.dart)
//         primarySwatch: Colors.blue, 
//         fontFamily: "Intel",  
//         inputDecorationTheme: InputDecorationTheme(
//           filled: true,
//           fillColor: Colors.white,
//           errorStyle: TextStyle(height: 0),
//           border: defaultInputBorder,
//           enabledBorder: defaultInputBorder,
//           focusedBorder: defaultInputBorder,
//           errorBorder: defaultInputBorder,
//         ),
//       ),
//       home: const OnboardingScreen(),
//     );
//   }