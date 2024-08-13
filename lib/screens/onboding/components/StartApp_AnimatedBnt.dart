import 'package:flutter/material.dart';

import 'package:rive_animation/screens/onboding/onboding_screen.dart';
import 'package:rive/rive.dart';

class StartApp_AnimatedBnt extends StatelessWidget {
  const StartApp_AnimatedBnt({
    super.key,
    required RiveAnimationController bntAnimationController, 
    required this.press,
  }) : _bntAnimationController = bntAnimationController;

  final RiveAnimationController _bntAnimationController;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 64,
        width: 260,
        child: Stack(
          children: [
          RiveAnimation.asset(
            "assets/RiveAssets/button.riv",
            controllers: [_bntAnimationController], //Linka a animação com o Botão
            ),
          Positioned.fill(
            top: 8, //Para alinhar o Texto no centro o Botão
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.double_arrow_rounded),
                Text(
                  "Start The APP",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}