import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


import '../aplication/aplication_screen.dart';
import 'components/StartApp_AnimatedBnt.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late RiveAnimationController _bntAnimationController; //Variavel para estado da Animação RIVE

  @override
  void initState() { // Seta os Parametros para a função da animação RIVE
    _bntAnimationController = OneShotAnimation(
      "active", 
      autoplay: false //autoplay: false -> Previne que a animação não comece sozinha no inicio do app/tela
      );              
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

      // Background
        children: [
          Positioned( // Imagem fixa no fundo da animação
            width: MediaQuery.of(context).size.width * 1.7,
            bottom: 200,
            left: 100,
            child: Image.asset("assets/Backgrounds/Spline.png")),
          RiveAnimation.asset("assets/RiveAssets/onboard_animationv2.riv"), // Diretório da Animação do Fundo
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10), // Potencia do blur no Eixo X e Y
              child: SizedBox(),
            ),
          ),

          // Area do Titulo / Subtitulo
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  // Titulo / Subtitulo
                  SizedBox( 
                    width: 260,
                    child: Column(
                      children: [
                        Text(
                          "Safe Finances",
                          style: TextStyle(
                            fontSize: 50,
                            fontFamily: "Poppins",
                            height: 1, // Distância Vertical entre as letras
                          ),
                        ),
                        SizedBox(height: 16), //Subtitulo
                        Text("Uma plataforma de gestão e Aprendizado"),
                      ],
                    ),
                  ),

                  Spacer(), // Espaço Vazio no centro da tela

                  // Botão Animado -> Componente
                  StartApp_AnimatedBnt(
                    bntAnimationController: _bntAnimationController,
                    press: () {
                      _bntAnimationController.isActive = true;

                      showGeneralDialog(
                        context: context, 
                        pageBuilder: (context, _, __) => Center(
                          child: Container(
                            height: 620,
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center, 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ElevatedButton(onPressed: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const AplicationPage()),
                                );}, child: Text("OI"))
                              ],
                            ),
                          ),
                        )
                      );
                    },
                  ),

                  //Texto Abaixo do botão
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Text("Uma jornada de aprendizado..."),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}


