import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

import '../../constants.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});


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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350, 
                  decoration: const BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)               
                    ) 
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      
                      Positioned( // ? Speech Ico
                        left: 150,
                        top: 45,
                        child: Icon(LucideIcons.speech,color: primaryColor,size: 105,)),
                      Positioned( // ? Spline Ico
                      left: 45,
                      top: 85,
                      child: Icon(LucideIcons.spline,color: primaryColorHighlight, size: 100,)),
                      Positioned( // ? Users Ico
                      left: 5,
                      bottom: 50,
                      child: Icon(LucideIcons.users,color: primaryColor, size: 120,)),
                      
                      Positioned( // ? Comuni 
                        left: 100,
                        bottom:150,
                        child: Text("Comuni", 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none
                          )
                        )
                      ),
                      Positioned( // ? Dade 
                        left: 184,
                        bottom:90,
                        child: Text("dade", 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none
                          )
                        )
                      ),  
                      

                      Container( // ? Filete do Container(Vermelinho)
                        width: 350,
                        height: 75, 
                        decoration: BoxDecoration(
                          color: secondaryColorHighlight,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), 
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 214, 3, 84),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, -10),
                            ),
                          ],  
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Descubra um mar de possibilidades:", 
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  decoration: TextDecoration.none
                                )
                              )
                            ],
                          ),
                      ),      
                    ],
                  ),
                ),
                Container( // ? Budget Infos Container(Vermelinho)
                  width: 350,
                  height: 75, 
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [secondaryColorHighlight, secondaryColor], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, 10),
                      ),
                    ],   
                  ),
                  child: Column(
                    children: [
                      Text("Click AQUI!", 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 26,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none,
                          )
                        )
                    ],
                  ),
                ),

                
                SizedBox(height: 30,),
                
                GestureDetector(
                  onTap: () => {
                    // Função para direcionar para o Youtube
                    print("Clicked")
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],     
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: backgroundApp,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(LucideIcons.youtube,color: secondaryColor, size: 50,),
                            ),
                            SizedBox(width: 15),
                            Container(
                              width: 185,
                              height: 150,
                              // color: Colors.amber,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Titulo da paradinha", 
                                    style: TextStyle(
                                      color: backgroundColor2,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 18,
                                      fontFamily: "Poppins",
                                      decoration: TextDecoration.none
                                    )
                                  ),
                                  Text("Subtitulo da paradinha", 
                                    style: TextStyle(
                                      color: shadowColorLight,
                                      fontWeight: FontWeight.w100,
                                      fontSize: 18,
                                      fontFamily: "Poppins",
                                      decoration: TextDecoration.none
                                    )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                ),
               

                SizedBox(height: 30,),
                SizedBox(height: 600,),
                



              ],
            ),
          ),
        )
      ],
    );
  }
}

