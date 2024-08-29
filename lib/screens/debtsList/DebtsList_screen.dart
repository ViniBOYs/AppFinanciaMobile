import 'package:flutter/material.dart';

import '../../constants.dart';
import '../home/components/ObjFavList.dart';

class DebtsListScreen extends StatelessWidget {
  const DebtsListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // return CustomScrollView(
    //   slivers: [
    //     SliverToBoxAdapter(          
    //       child: Container(
    //         color: backgroundApp,
    //         child: Column(              
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [                                 
    //             Container(height: (MediaQuery.of(context).size.height)/2,),
    //             Container(
    //               height: (MediaQuery.of(context).size.height),
    //               decoration: BoxDecoration(
    //                 color: Colors.amber,
    //                 borderRadius: BorderRadius.only(
    //                   topLeft: Radius.circular(30),
    //                   topRight: Radius.circular(30)
    //                 )
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     )
    //   ],
    // );
  
  
    // return Column(
    //   children: [
    //     Container(
    //       width: MediaQuery.of(context).size.width, 
    //       height: (MediaQuery.of(context).size.height)/1.12,
    //       color: backgroundApp,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.end,
    //         children: [
    //           CircleAvatar(radius: 150,backgroundColor: Colors.purple,child: CircleAvatar(radius:120, backgroundColor: backgroundApp,),),
    //           Container(
    //             height: (MediaQuery.of(context).size.height)/2.5,
    //             decoration: BoxDecoration(
    //               color: backgroundColorLight,
    //               borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
    //             ),
    //             child: Padding(
    //                     padding: const EdgeInsets.all(20.0),
    //                     child: Container(
    //                       width:MediaQuery.of(context).size.width,
    //                       height: (MediaQuery.of(context).size.height)/1.9,
    //                       // color: Colors.amber,
    //                       child: ListView(
    //                         children: [
    //                           Container(
    //                             height: 150,
    //                             decoration: BoxDecoration(
    //                               color: backgroundApp,
    //                               borderRadius: BorderRadius.circular(20)
    //                             ),
    //                             child: Row(
    //                               children: [
    //                                 Container(
    //                                   width: 100,
    //                                   height: 100,
    //                                   decoration: BoxDecoration(
    //                                     color: Colors.red,
    //                                     borderRadius: BorderRadiusDirectional.circular(20)
    //                                   ),
    //                                 )
    //                               ],
    //                             ),
    //                           ),
    //                           SizedBox(height: 20,),
    //                           Container(height: 200,color: Colors.redAccent,),
    //                           Container(height: 200,color: Colors.red,),
    //                           Container(height: 200,color: Colors.redAccent,),
    //                           Container(height: 200,color: Colors.red,),
    //                           Container(height: 200,color: Colors.redAccent,),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //           )
    //         ],
    //       )
    //     ),
    //     Container(
    //       height: (MediaQuery.of(context).size.height)/9.4,
    //       color: backgroundColorLight,
    //     )
    //   ],
    // );
  
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
                  height: (MediaQuery.of(context).size.height)/1.75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: backgroundColorLight,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Stack( // ? Lista Interna de Componentes
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20,),
                        child: Container(
                          width:MediaQuery.of(context).size.width,
                          height: (MediaQuery.of(context).size.height)/1.9,
                          // color: Colors.amber,
                          child: ListView(
                            children: [
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  color: backgroundColorLight,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,height: 100,
                                      decoration: BoxDecoration(
                                        color: backgroundApp,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                              ),
                              SizedBox(height: 120,),
                            ],
                          ),
                        ),
                      ),                     
                    ],
                  )
                ),
                
              ],
            ),
          ),
        )
      ],
    );

  }
}

