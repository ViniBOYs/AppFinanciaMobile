import 'package:flutter/material.dart';

class AplicationPage extends StatefulWidget {
  const AplicationPage({super.key});

  @override
  State<AplicationPage> createState() => _AplicationPageState();
}

class _AplicationPageState extends State<AplicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(width: 200, height: 200, color: Colors.amber,)
        ],
      ),
    );
  }
}