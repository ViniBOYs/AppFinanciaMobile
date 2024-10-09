import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/ObjFavList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  double money = 1502.94;
  double budget = 5000.0;
  String moneyLayout = money.toStringAsFixed(2).replaceAll(".",",");
  String budgetLayout = budget.toStringAsFixed(2).replaceAll(".",",");

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
                  height: 300, 
                  decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)               
                    ) 
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned( // ? Circle
                        right: 10,
                        top: 10,
                        child: CircleAvatar(radius: 60, backgroundColor: primaryColorHighlight)),
                      Positioned( // ? Circle
                      left: 30,
                      top: 150,
                      child: CircleAvatar(radius: 30, backgroundColor: primaryColorHighlight)),
                      Positioned( // ? Img Porco
                        top: 0,
                        child: Image.asset("assets/img/Porco.png",width: 200,height: 200,)),
                      Positioned( // ? Saldo 
                        bottom:100,
                        child: Text("Saldo", 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none
                          )
                        )
                      ),    
                      Positioned( // ? R$: Money 
                        bottom: 60,
                        child: Text("R\$: $moneyLayout", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none
                          )
                        )
                      ),            
                      Container( // ? Filete do Container(Roxo)
                        width: 350,
                        height: 50, 
                        decoration: BoxDecoration(
                          color: primaryColorHighlight,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)), 
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("Orçamento para o mês de Setembro:", 
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
                Container( // ? Budget Infos Container(Roxo)
                  width: 350,
                  height: 50, 
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [primaryColorHighlight, primaryColor], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)), 
                  ),
                  child: Column(
                    children: [
                      Text("R\$: $budgetLayout", 
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w200,
                            fontSize: 26,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.none
                          )
                        )
                    ],
                  ),
                ),

                
                SizedBox(height: 30,), 
                ObjFavList(), // * Container branco
                SizedBox(height: 30,),
                ObjFavList(),
                SizedBox(height: 200,),
                

              ],
            ),
          ),
        )
      ],
    );
  }
}

