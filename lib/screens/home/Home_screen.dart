import 'package:flutter/material.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [         
          Container(
            height: 380, 
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(70)               
              ) 
            ),
          ),
          Container(
            width: 350,
            height: 200, 
            decoration: BoxDecoration(
              color: backgroundColorLight,
              borderRadius: BorderRadius.all(Radius.circular(20)), 
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 350,
            height: 200, 
            decoration: BoxDecoration(
              color: backgroundColorLight,
              borderRadius: BorderRadius.all(Radius.circular(20)), 
            ),
          ),
        ],
      ),
    );
  }
}





// ListView(
//       children: [
//         Container(height: 500, color: Colors.white),
//         Container(height: 200, color: Colors.amber,),
//         Container(height: 200, color: const Color.fromARGB(255, 208, 174, 71),),
//         Container(height: 200, color: Colors.amber,),
//         Container(height: 200, color: const Color.fromARGB(255, 208, 174, 71),),
//         Container(height: 200, color: Colors.amber,),
//         Container(height: 200, color: const Color.fromARGB(255, 208, 174, 71),),
//       ],
//     );