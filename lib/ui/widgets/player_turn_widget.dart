import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';

class PlayerTurnWidget extends StatelessWidget {
  PlayerTurnWidget({Key? key}) : super(key: key);

  GameController gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return Text(
      ' ${gameController.lastValue} turn'.toUpperCase(),
      style: TextStyle(
          color: context.theme.focusColor,
          fontSize: 30,
          fontWeight: FontWeight.w600,
          letterSpacing: 2),
    );
  }
}
