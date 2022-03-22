import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';

class ResultWidget extends StatelessWidget {
  ResultWidget({Key? key}) : super(key: key);
  GameController gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return Text(
      gameController.result,
      style: TextStyle(
        color: context.theme.focusColor,
        fontSize: 40,
      ),
    );
  }
}
