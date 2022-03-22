import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';

class PlayAgainButton extends StatelessWidget {
  PlayAgainButton({Key? key}) : super(key: key);
  GameController gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GameController>(builder: (gameController) {
      return Visibility(
        visible: gameController.gameOver,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: 40,
            width: Get.width * 0.7,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 26, 99, 158),
            ),
            child: InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  'Play Again',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                      color: context.theme.focusColor,
                      fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
