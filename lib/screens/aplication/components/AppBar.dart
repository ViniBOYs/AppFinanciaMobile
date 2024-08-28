  import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

import '../../../constants.dart';
import '../aplication_screen.dart';

class AppBarComponent extends StatefulWidget {
  const AppBarComponent({super.key});

  @override
  State<AppBarComponent> createState() => _AppBarComponentState();
}



class _AppBarComponentState extends State<AppBarComponent> {

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.center,   
      children: [
        Positioned(
          bottom: 25,
          child: Container(
            width: (MediaQuery.of(context).size.width/1.1),
            height: 70, decoration: 
              BoxDecoration(borderRadius: BorderRadius.circular(20),), // ? Backgound do Appbar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( // ? Lado Esquerdo do Menu
                  width: (MediaQuery.of(context).size.width/2.8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded( // ? Home-Buttom
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {                                    
                                    SwitchScreen(0);
                                    // print("Home-Buttom");
                                  },
                                  child: Container(
                                    child: Icon(LucideIcons.house,color: primaryColor,size: 25,),
                                  ),
                                )
                              ),
                              Expanded( // ? List-Buttom
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                      SwitchScreen(1);
                                    // print("List-Buttom");
                                  },
                                  child: Container(
                                    child: Icon(LucideIcons.clipboard_list,color: primaryColor,size: 25,),
                                  ),
                                )
                              )
                            ],
                          )
                        ),
                      ),                      
                    ],
                  ),
                ),
                Container( // ? Lado Direito do Menu
                  width: (MediaQuery.of(context).size.width/2.8),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded( // ? Summary-Buttom
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    print("Summary-Buttom");
                                  },
                                  child: Container(
                                    child: Icon(LucideIcons.layout_grid,color: primaryColor,size: 25,),
                                  ),
                                )
                              ),
                              Expanded( // ? Community-Buttom
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    print("Community-Buttom");
                                  },
                                  child: Container(
                                    child: Icon(LucideIcons.users,color: primaryColor,size: 25,),
                                  ),
                                )
                              )
                            ],
                          )
                        ),
                      ),                      
                    ],
                  ),
                ),           
              ],
            ),
          )
        ),
        Positioned( // ? Plus-Buttom
          bottom: 30,
          child: GestureDetector(
            onTap: (){
              print("Plus-Buttom");
            },
            child: CircleAvatar(
              radius: 30,
              backgroundColor: primaryColor,              
              child: Icon(
                Icons.add_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
          )
        ),
      ],  
    );
  }
}



