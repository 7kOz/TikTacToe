import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktactoezzz/controllers/game_controller.dart';

class GameWidget extends StatelessWidget {
  GameWidget({Key? key}) : super(key: key);
  GameController gameController = Get.put(GameController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: gameController.gameOver == false,
          child: Container(
            width: Get.width * 0.8,
            height: Get.height * 0.4,
            child: GridView.count(
              crossAxisCount: gameController.game.boardlength ~/ 3,
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: List.generate(gameController.game.boardlength, (index) {
                return GetBuilder<GameController>(builder: (gameController) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    onTap: gameController.gameOver == false
                        ? () {
                            gameController.setValueToLastValue(index);
                          }
                        : () {},
                    child: Container(
                      height: gameController.game.blockSize,
                      width: gameController.game.blockSize,
                      decoration: BoxDecoration(
                          color: context.theme.cardColor,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Text(
                          gameController.game.board![index],
                          style: TextStyle(
                              color: gameController.game.board![index] == 'X'
                                  ? context.theme.errorColor
                                  : context.theme.hintColor,
                              fontSize: 60),
                        ),
                      ),
                    ),
                  );
                });
              }),
            ),
          ),
        ),
      ],
    );
  }
}
