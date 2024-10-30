import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../constants.dart';

class ObjFavList extends StatelessWidget {
  const ObjFavList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 170, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)), 
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(width: 100,height: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:backgroundApp ),),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Text("Nome da atividade", 
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.none
                        )
                      ),
                  ),
                  Text("Budget", 
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w100,
                          fontSize: 15,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.none
                        )
                      ),
                ],
              )
            ],
          ),
          Container(
            width: (MediaQuery.of(context).size.width/1.3), 
            // height: 10,color: Colors.blue,
            child: Container(
              width: 200,
              height: 25,
              decoration: BoxDecoration(
                color: backgroundApp,
                borderRadius: BorderRadius.circular(30)
              ),
              child: SfLinearGauge(
                showLabels: false,
                showTicks: false,
                showAxisTrack: false,
                ranges: [
                  LinearGaugeRange(
                    edgeStyle: LinearEdgeStyle.bothCurve,  
                    endValue: 60, // ! Valor do Percentual da barra    
                    startWidth: 25, 
                    endWidth: 25,
                    shaderCallback: (bounds) => RadialGradient(
                      center: Alignment.centerLeft,
                      radius: 8,
                      colors: [
                        primaryColor,
                        secondaryColor,
                      ]
                    ).createShader(bounds)
                  )
                ],
              ),
            )
          ),       
        ],
      ),
    );
  }
}







