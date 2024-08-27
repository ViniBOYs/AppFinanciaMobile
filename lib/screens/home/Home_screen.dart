import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(width: 200, height: 200, color: Colors.amber,
          child: Text("TelaHome"),)
        ],
      ),
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