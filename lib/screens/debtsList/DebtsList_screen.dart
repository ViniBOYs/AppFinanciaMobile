import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/ObjFavList.dart';

class DebtsListScreen extends StatelessWidget {
  const DebtsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
  
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(          
          child: Container(
            color: backgroundApp,
            child: Column(              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [                                 
                Container( // ? Grafico Roxo
                  height: (MediaQuery.of(context).size.height)/2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: CircleAvatar(radius: 150,backgroundColor: Colors.purple,child: CircleAvatar(radius:120, backgroundColor: backgroundApp,),),
                      ),
                    ],
                  ),
                ),
                Container( // ? Parte Branca
                  height: (MediaQuery.of(context).size.height),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: backgroundColorLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
              
                ),
                
              ],
            ),
          ),
        )
      ],
    );

  }
}

